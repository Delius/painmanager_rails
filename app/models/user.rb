class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login ]

  has_many :pain_records, dependent: :destroy


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
