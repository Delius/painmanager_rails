class CreatePainRecords < ActiveRecord::Migration
  def change
    create_table :pain_records do |t|
      t.integer :user_id
      t.string :pain_record_description
      t.integer :pain_record_pain_level
      t.string :pain_record_pain_placement
      t.string :pain_record_pain_type
      t.string :pain_record_pain_duration

      t.timestamps null: false
    end
  end
end
