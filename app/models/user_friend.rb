class UserFriend < ApplicationRecord
  belongs_to :user, :class_name => 'user'
  belongs_to :Friend, :class_name => 'user'
end
