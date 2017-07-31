class Api::V1::UserSerializer < Api::V1::BaseSerializer
  attributes :id, :first_name, :last_name, :middle_name, :email
  has_many :owned_boards, serializer: Api::V1::BoardSerializer
  has_many :boards, serializer: Api::V1::BoardSerializer
  # has_many :tasks
end
