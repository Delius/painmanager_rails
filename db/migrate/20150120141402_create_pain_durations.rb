class CreatePainDurations < ActiveRecord::Migration
  def change
    create_table :pain_durations do |t|
      t.integer :duration_level
      t.references :user, index: true
      t.references :diary, index: true

      t.timestamps null: false
    end
    add_foreign_key :pain_durations, :users
    add_foreign_key :pain_durations, :diaries
  end
end
