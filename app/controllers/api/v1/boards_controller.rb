class Api::V1::BoardsController < ApplicationController
  before_action :set_board, only: [:show]
  def index
    @boards = Board.includes(:lists)
    render json: @boards, adapter: :json
  end

  def show
    render json: @board, adapter: :json
  end

  private
  def set_board
    @board = Board.find(params[:id])
  end
end
