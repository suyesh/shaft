class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :middle_name, :email
  # has_many :owned_boards
  # has_many :boards
  # has_many :tasks
end
