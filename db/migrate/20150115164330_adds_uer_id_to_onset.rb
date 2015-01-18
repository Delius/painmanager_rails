class AddsUerIdToOnset < ActiveRecord::Migration
  def change
    add_column :pain_onset_trackers, :user_id, :integer
  end
end
