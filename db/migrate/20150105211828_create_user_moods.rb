class CreateUserMoods < ActiveRecord::Migration
  def change
    create_table :user_moods do |t|
      t.integer :user_id
      t.string :user_mood_name

      t.timestamps null: false
    end
  end
end
