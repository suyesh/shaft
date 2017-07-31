class Task < ApplicationRecord
  belongs_to :list
  has_many :check_lists
  has_many :task_memberships
  has_many :members, through: :task_memberships, source: :user
  has_many :task_logs
  has_many :comments, as: :commentable

  validates :list, presence: true
  validates :title, presence: true
end
