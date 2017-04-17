class OrdersController < ApplicationController
  def show
    @order_dishes = current_order.order_dishes
    @order_combos = current_order.order_combos
  end

  def index
    if params[:order]
      order = Order.find_by code: params[:order][:code]
      if order.guest != nil && order.guest.email == params[:order][:email]
        session[:order_id] = order.id
        redirect_to order_path
      else
        flash[:danger] = "There are no order the same as the infomation!"
        render :index
      end
    end
  end
end
