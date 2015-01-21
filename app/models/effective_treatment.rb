class EffectiveTreatment < ActiveRecord::Base
  belongs_to :user
  belongs_to :diary
  serialize :name, Array
end
