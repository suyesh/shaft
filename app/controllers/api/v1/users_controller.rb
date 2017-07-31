class Api::V1::UsersController < ApplicationController
  def index
    @users = User.includes(:boards, :owned_boards)
    render json: @users, adapter: :json
  end
end
