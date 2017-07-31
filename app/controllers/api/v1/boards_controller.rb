class Api::V1::BoardsController < ApplicationController
  def index
    @boards = Board.includes(:lists)
    render json: @boards, adapter: :json
  end
end
