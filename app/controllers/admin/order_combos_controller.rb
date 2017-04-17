class Admin::OrderCombosController < ApplicationController
  before_action :logged_in_admin
  before_action :find_order #, only: [:new, :create]
  before_action :find_order_combo #, only: [:new, :create]
  before_action :load_combo

  def new
    @order_combo = OrderCombo.new
  end

  def create
    @order_combo = @order.order_combos.new order_combo_params
    if @order.save
      flash[:success] = "Added successfully!"
      redirect_to admin_order_path @order
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @order_combo.update_attributes order_combo_params
      flash[:success] = "Updated successfully!"
      redirect_to admin_order_path @order
    else
      render :edit
    end
  end

  def destroy
    if @order
      @order.order_combos.include?(@order_combo)
      if @order.order_combos.delete @order_combo
        flash[:success] = "Delete successfully!"
        redirect_to admin_order_path @order
      else
        flash[:danger] = "Something wrong!"
      end
    end
  end

  private
  def order_combo_params
    params.require(:order_combo).permit :combo_id, :quantity
  end

  def find_order
    @order = Order.find_by id: params[:order_id]
  end

  def find_order_combo
    @order_combo = if @order
      @order.order_combos.find_by id: params[:id]
    else
      OrderCombo.find_by id: params[:id]
    end
  end

  def load_combo
    @combos = Combo.all.map {|p| [p.name, p.id]}
  end
end
