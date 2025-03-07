class Api::UsersController < ApplicationController
  before_action :set_user

  def library
    @library = Video.find(@current_user.library)

    render 'api/library/index', library: @library
  end

  def purchase
    purchase = Purchase.new(purchase_params)

    if purchase.save
      render json: "You can enjoy your new content now!"
    else
      render json: purchase.errors, status: :unprocessable_entity
    end
  end

  private

  # We assume that you are already authenticated
  def set_user
    @current_user = User.all.sample
  end

  def purchase_params
    params.require(:purchase).permit(:video_id, :quality).merge(user_id: @current_user.id)
  end
end
