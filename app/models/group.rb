class Group < ApplicationRecord
  has_many :groups
  has_many :group_users
  has_many :users, through: :group_users
end
