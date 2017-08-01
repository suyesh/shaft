class Api::V1::TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_key, :title, :description, :due_date, :task_logs
  has_one :list
  has_many :task_logs, serializer: Api::V1::TaskLogSerializer
end
