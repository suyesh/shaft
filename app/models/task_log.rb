class TaskLog < ApplicationRecord
  belongs_to :task
  validates :task, presence: true
  validates :start_time, presence: true
end
