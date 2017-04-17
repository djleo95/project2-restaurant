class OrderCombosController < ApplicationController
  def create
    @order = current_order
    @order_combo = @order.order_combos.new order_combo_params
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_combo = @order.order_combos.find_by id: params[:id]
    @order_combo.update_attributes order_combo_params
    @order_combos = @order.order_combos
    @order_dishes = @order.order_dishes
  end

  def destroy
    @order = current_order
    @order_combo = @order.order_combos.find_by id: params[:id]
    @order_combo.destroy
    @order_combos = @order.order_combos
    @order_dishes = @order.order_dishes
  end

  private
  def order_combo_params
    params.require(:order_combo).permit :quantity, :id, :combo_id
  end
end
