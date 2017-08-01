class Api::V1::ListSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :board
  has_many :tasks, serializer: Api::V1::TaskSerializer
end
