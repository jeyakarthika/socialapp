class UserStartupProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :startup_profile
end
