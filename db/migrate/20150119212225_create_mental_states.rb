class CreateMentalStates < ActiveRecord::Migration
  def change
    create_table :mental_states do |t|
      t.string :disposition
      t.string :stress
      t.string :mood_stability
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :mental_states, :users
    add_foreign_key :mental_states, :diaries
  end
end
