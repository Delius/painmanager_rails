class CreateActivityLevels < ActiveRecord::Migration
  def change
    create_table :activity_levels do |t|
      t.integer :act_level
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :activity_levels, :users
    add_foreign_key :activity_levels, :diaries
  end
end
