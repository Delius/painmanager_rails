class CreateOtherSymptoms < ActiveRecord::Migration
  def change
    create_table :other_symptoms do |t|
      t.string :symotom_name
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :other_symptoms, :users
    add_foreign_key :other_symptoms, :diaries
  end
end
