class PainTrigger < ActiveRecord::Base
  belongs_to :diary
  belongs_to :user
  serialize :name, Array
  def self.triggers(date)
      where("date(pain_triggers.created_at) = ? ", date).select(:name).count


  end
end
