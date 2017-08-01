class Api::V1::TaskLogSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :total_time
  has_one :task
end
