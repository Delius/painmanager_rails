class PainIntensityLevel < ActiveRecord::Base
  belongs_to :user
  belongs_to :diary

  def self.total_on(date)
    where("date(pain_intensity_levels.created_at) = ? ", date).sum(:intensity_level)
  end
  def self.average_on(date)
    where("pain_intensity_levels.created_at > ?", 3.weeks.ago).average(:intensity_level).to_f
  end
end
