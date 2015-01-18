class PainTrigger < ActiveRecord::Base
  belongs_to :diary
  belongs_to :user
  serialize :name, Array
end
