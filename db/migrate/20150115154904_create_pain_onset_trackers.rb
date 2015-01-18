class CreatePainOnsetTrackers < ActiveRecord::Migration
  def change
    create_table :pain_onset_trackers do |t|
      t.integer :diary_id
      t.integer :pain_onset_speed

      t.timestamps null: false
    end
  end
end
