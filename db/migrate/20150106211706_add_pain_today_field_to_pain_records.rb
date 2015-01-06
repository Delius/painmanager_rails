class AddPainTodayFieldToPainRecords < ActiveRecord::Migration
  def change
    add_column :pain_records, :had_pain_today, :boolean
  end
end
