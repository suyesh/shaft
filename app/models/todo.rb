class Todo < ApplicationRecord
  belongs_to :check_list
  validates :check_list, presence: true
  validates :item, presence: true
end
