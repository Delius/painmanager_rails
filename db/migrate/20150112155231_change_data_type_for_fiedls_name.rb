class ChangeDataTypeForFiedlsName < ActiveRecord::Migration
  def self.up
    change_table :pain_records do |t|
      t.change :limited_activities, :string
      t.change :all_medicines_taken, :string
      t.change :unrelieved_pain, :string
      t.change :is_activity_starting_pain, :string
      t.change :used_other_actions_to_relieve_pain, :string
      t.change :skipped_medicines, :string
      t.change :called_doctor_because_of_pain, :string
      t.change :slept_through_night, :string
      t.change :satisfied_with_pain_management, :string
    end
  end
  def self.down
    change_table :pain_records do |t|
      t.change :limited_activities, :boolean
      t.change :unrelieved_pain, :boolean
      t.change :is_activity_starting_pain, :boolean
      t.change :used_other_actions_to_relieve_pain, :boolean
      t.change :skipped_medicines, :boolean
      t.change :called_doctor_because_of_pain, :boolean
      t.change :slept_through_night, :boolean
      t.change :satisfied_with_pain_management, :boolean
     end
  end
end
