class OtherSymptom < ActiveRecord::Base
  belongs_to :user
  belongs_to :diary
  serialize :symotom_name, Array
end
