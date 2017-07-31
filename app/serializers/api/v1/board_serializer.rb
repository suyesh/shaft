class Api::V1::BoardSerializer < Api::V1::BaseSerializer
  attributes :id, :title, :links
  attributes :title
  has_one :owner
  has_many :members
  has_many :lists

  def links
    [
      {
        rel: :self,
        href: api_v1_board_path(object)
      }
    ]
  end
end
