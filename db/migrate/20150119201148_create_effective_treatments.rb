class CreateEffectiveTreatments < ActiveRecord::Migration
  def change
    create_table :effective_treatments do |t|
      t.string :name
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :effective_treatments, :users
    add_foreign_key :effective_treatments, :diaries
  end
end
