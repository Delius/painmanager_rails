class CreatePainTriggers < ActiveRecord::Migration
  def change
    create_table :pain_triggers do |t|
      t.string :name
      t.integer :user_id
      t.integer :diary_id
      t.references :diary, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pain_triggers, :diaries
    add_foreign_key :pain_triggers, :users
  end
end
