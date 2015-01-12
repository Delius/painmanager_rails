class ChangeDataTypeForFielsName < ActiveRecord::Migration
  def self.up
    change_table :pain_records do |t|
      t.change :had_pain_today, :string
    end
  end
  def self.down
    change_table :pain_records do |t|
      t.change :had_pain_today, :boolean
    end
  end
end
