class OrdersController < ApplicationController
  def show
    @order_dishes = current_order.order_dishes
    @order_combos = current_order.order_combos
  end
end
