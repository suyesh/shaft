class User < ApplicationRecord
  has_secure_password
  has_many :owned_boards, class_name: 'Board', foreign_key: 'owner_id'
  has_many :board_memberships
  has_many :boards, through: :board_memberships
  has_many :task_memberships
  has_many :tasks, through: :task_memberships
end
