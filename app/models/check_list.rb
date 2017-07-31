class CheckList < ApplicationRecord
  belongs_to :task
  has_many :todos

  validates :task, presence: true
  validates :title, presence: true
end
