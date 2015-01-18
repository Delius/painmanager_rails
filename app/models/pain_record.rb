class PainRecord < ActiveRecord::Base
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  validates :user_id, presence: true
  acts_as_taggable



end

