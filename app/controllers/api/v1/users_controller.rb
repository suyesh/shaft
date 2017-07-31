class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, adapter: :json_api
  end
end
