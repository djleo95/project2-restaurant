class OrderDishesController < ApplicationController
  def create
    @order = current_order
    @order_dish = @order.order_dishes.new order_dish_params
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_dish = @order.order_dishes.find_by id: params[:id]
    @order_dish.update_attributes order_dish_params
    @order_dishes = @order.order_dishes
    @order_combos = @order.order_combos
  end

  def destroy
    @order = current_order
    @order_dish = @order.order_dishes.find_by id: params[:id]
    @order_dish.destroy
    @order_dishes = @order.order_dishes
    @order_combos = @order.order_combos
  end

  private
  def order_dish_params
    params.require(:order_dish).permit :quantity, :id, :dish_id
  end
end
