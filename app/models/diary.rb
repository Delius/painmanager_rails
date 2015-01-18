class Diary < ActiveRecord::Base
  belongs_to :user
  has_many :pain_onset_trackers
  has_many :pain_triggers
  has_many :pain_intensity_levels
  has_many :pain_descriptions
  accepts_nested_attributes_for :pain_onset_trackers, allow_destroy: true
  accepts_nested_attributes_for :pain_triggers, allow_destroy: true
  accepts_nested_attributes_for :pain_intensity_levels, allow_destroy: true
  accepts_nested_attributes_for :pain_descriptions, allow_destroy: true

  validates :user_id, presence: true
end
