class List < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :destroy

  validates :board, presence: true
  validates :title, presence: true
end
