class ActivityLevel < ActiveRecord::Base
  belongs_to :user
  belongs_to :diary

  def self.total_on(date)
    where("date(activity_levels.created_at) = ? ", date).sum(:act_level)
  end
  def self.average_on(date)
    where("activity_levels.created_at > ?", 3.weeks.ago).average(:act_level).to_f
  end
end
