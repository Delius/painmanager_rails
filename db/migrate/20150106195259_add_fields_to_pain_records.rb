class AddFieldsToPainRecords < ActiveRecord::Migration
  def change
    add_column :pain_records, :limited_activities, :boolean
    add_column :pain_records, :limited_activities_name, :string
    add_column :pain_records, :all_medicines_taken, :boolean
    add_column :pain_records, :unrelieved_pain, :boolean
    add_column :pain_records, :how_often_unrelieved_pain, :integer
    add_column :pain_records, :is_activity_starting_pain, :boolean
    add_column :pain_records, :activity_starting_pain_name, :string
    add_column :pain_records, :average_pain_level, :integer
    add_column :pain_records, :used_other_actions_to_relieve_pain, :boolean
    add_column :pain_records, :pain_placement, :string
    add_column :pain_records, :side_effects_after_pain_medicine, :string
    add_column :pain_records, :skipped_medicines, :boolean
    add_column :pain_records, :skipped_medicines_why, :string
    add_column :pain_records, :called_doctor_because_of_pain, :boolean
    add_column :pain_records, :slept_through_night, :boolean
    add_column :pain_records, :slept_through_night_disrupted_times, :integer
    add_column :pain_records, :slept_hours_night, :integer
    add_column :pain_records, :satisfied_with_pain_management, :boolean
    add_column :pain_records, :why_satisfied_or_not, :string
    add_column :pain_records, :acceptable_pain_level, :integer
    remove_column :pain_records, :pain_record_description, :string
    remove_column :pain_records, :pain_record_pain_level, :integer
    remove_column :pain_records, :pain_record_pain_placement, :string
    remove_column :pain_records, :pain_record_pain_type, :string
    remove_column :pain_records, :pain_record_pain_duration, :string

  end
end
