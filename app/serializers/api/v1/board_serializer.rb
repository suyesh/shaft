class Api::V1::BoardSerializer < Api::V1::BaseSerializer
  attributes :id, :title
  attributes :title
  has_one :owner
  has_many :members,serializer: Api::V1::UserSerializer
  has_many :lists, serializer: Api::V1::ListSerializer
  #
  # def links
  #   [
  #     {
  #       rel: :self,
  #       href: api_v1_board_path(object)
  #     }
  #   ]
  # end
end
