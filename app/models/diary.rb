class Diary < ActiveRecord::Base
  belongs_to :user
  has_many :pain_onset_trackers
  has_many :pain_triggers
  has_many :pain_intensity_levels
  has_many :pain_descriptions
  has_many :activity_levels
  has_many :effective_treatments
  has_many :mental_states
  has_many :other_symptoms
  has_many :pain_durations
  accepts_nested_attributes_for :pain_onset_trackers, allow_destroy: true
  accepts_nested_attributes_for :pain_triggers, allow_destroy: true
  accepts_nested_attributes_for :pain_intensity_levels, allow_destroy: true
  accepts_nested_attributes_for :pain_descriptions, allow_destroy: true
  accepts_nested_attributes_for :activity_levels, allow_destroy: true
  accepts_nested_attributes_for :effective_treatments, allow_destroy: true
  accepts_nested_attributes_for :mental_states, allow_destroy: true
  accepts_nested_attributes_for :other_symptoms, allow_destroy: true
  accepts_nested_attributes_for :pain_durations, allow_destroy: true
  validates :user_id, presence: true
end
