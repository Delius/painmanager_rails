class AddFielsdToPainRecords < ActiveRecord::Migration
  def change
    add_column :pain_records, :activity_level, :integer
    add_column :pain_records, :disposition_level, :integer
    add_column :pain_records, :stress_level, :integer
    add_column :pain_records, :mood_stability_level, :integer
    add_column :pain_records, :pain_onset_speed, :integer
    add_column :pain_records, :pain_description, :string
    add_column :pain_records, :pain_duration, :integer
    add_column :pain_records, :pain_trigger, :string
    add_column :pain_records, :time_to_fall_asleep, :integer
    add_column :pain_records, :sleep_type, :string
    add_column :pain_records, :sleep_interrupted_times, :integer
    add_column :pain_records, :sleep_quality, :integer
    add_column :pain_records, :hours_fo_sleep, :time
   end
end
