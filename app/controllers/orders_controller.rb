class OrdersController < ApplicationController
  def show
    if params[:commit] == "Create new order"
      session.delete :order_id
      redirect_to order_path
    end
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
        flash[:danger] = "Can't find any order with this infomation!"
        render :index
      end
    end
  end

  def create
    params[:guest_id] = session[:guest]["id"]
    if current_order.code != nil
      session.delete :order_id
    end
    if current_order.id == nil
      @order = current_order
      @order.save
      session[:order_id] = @order.id
    end
    current_order.update_attributes order_params
    flash[:success] = "Success create order"
    render :json => { :path1 => "#{order_path}" }
  end

  private
  def order_params
    params.permit :table_id, :day, :time_in, :guest_id, :code
  end
end
