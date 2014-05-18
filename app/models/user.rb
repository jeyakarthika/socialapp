class User < ActiveRecord::Base
  has_one :user_profile
  has_many :user_startup_profiles
  has_many :startup_profiles, through: :user_startup_profiles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
