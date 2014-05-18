class StartupProfile < ActiveRecord::Base
  has_many :user_startup_profiles
  has_many :users, through: :user_startup_profiles
end
