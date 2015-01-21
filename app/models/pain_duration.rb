class PainDuration < ActiveRecord::Base
  belongs_to :user
  belongs_to :diary
end
