class CreatePainDescriptions < ActiveRecord::Migration
  def change
    create_table :pain_descriptions do |t|
      t.string :description_name
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :pain_descriptions, :users
    add_foreign_key :pain_descriptions, :diaries
  end
end
