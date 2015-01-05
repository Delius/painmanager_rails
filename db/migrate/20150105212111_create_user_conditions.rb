class CreateUserConditions < ActiveRecord::Migration
  def change
    create_table :user_conditions do |t|
      t.integer :user_id
      t.boolean :user_condition_diagnosed
      t.string :user_condition_description
      t.string :user_condition_category

      t.timestamps null: false
    end
  end
end
