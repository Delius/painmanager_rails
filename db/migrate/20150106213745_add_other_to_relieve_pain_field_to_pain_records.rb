class AddOtherToRelievePainFieldToPainRecords < ActiveRecord::Migration
  def change
    add_column :pain_records, :other_actions_to_relieve_pain_name, :string
  end
end
