class Board < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :lists ,dependent: :destroy
  has_many :board_memberships
  has_many :members, through: :board_memberships, source: :user

  validates :title, presence: true
  validates :owner, presence: true
end
