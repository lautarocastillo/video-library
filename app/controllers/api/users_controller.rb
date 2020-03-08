class Api::UsersController < ApplicationController
  before_action :set_user

  def library
    render json: @current_user
  end

  private

  def set_user
    # we assume that you are already authenticated
    @current_user = User.all.sample
  end
end
