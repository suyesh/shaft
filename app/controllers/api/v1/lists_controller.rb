class Api::V1::ListsController < ApplicationController
  def index
    render json: List.includes(:tasks)
  end
end
