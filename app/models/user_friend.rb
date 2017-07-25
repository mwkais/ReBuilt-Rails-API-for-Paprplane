class UserFriend < ApplicationRecord
  belongs_to :user, :class_name => 'User'
  belongs_to :Friend, :class_name => 'User'
end
