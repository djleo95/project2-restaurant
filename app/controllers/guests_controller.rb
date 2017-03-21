class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new guest_params
    if @guest.save
      current_guest @guest
    else
      redirect_to root_path
    end
  end

  private
  def guest_params
    params.require(:guest).permit :name, :email, :phoneNum
  end
end
