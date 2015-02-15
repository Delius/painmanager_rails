class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login ]
  acts_as_taggable_on :pain_records
  has_many :pain_records, dependent: :destroy
  has_many :pain_intensity_levels, :through => :diaries, dependent: destroy
  has_many :pain_onset_trackers, :through => :diaries, dependent: :destroy
  has_many :pain_triggers, :through => :diaries, dependent: :destroy
  has_many :diaries, -> { order("created_at DESC") }
  accepts_nested_attributes_for :diaries, allow_destroy: true

  def average_pain
    PainRecord.where("created_at > ?", 60.days.ago).average(:average_pain_level).to_i
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.user_name || self.email
  end

  def self.find_for_authentication(conditions)
    login = conditions.delete(:login)
    where(conditions).where(["user_name = :value OR email = :value", { :value => login }]).first
  end


end
