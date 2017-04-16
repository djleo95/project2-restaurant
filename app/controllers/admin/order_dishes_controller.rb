class Admin::OrderDishesController < ApplicationController
  before_action :logged_in_admin
  before_action :find_order, only: [:new, :create, :edit, :update]
  before_action :find_order_dish, only: [:new, :create]
  before_action :load_dish

  def new
    @order_dish = OrderDish.new
  end

  def create
    @order_dish = @order.order_dishes.new order_dish_params
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
    if @order_dish.update_attributes order_dish_params
      flash[:success] = "Updated successfully!"
      redirect_to admin_order_path @order
    else
      render :edit
    end
  end

  def destroy
    @order = OrderDish.find_by id: params[:order_id]
    @order_dish = @order.order_dishes.find_by id: params[:id]
    if @order_dish.destroy
      flash[:success] = "Delete successfully!"
    else
      flash[:danger] = t "flash.dish.destroy_fail"
    end
  end

  private
  def order_dish_params
    params.require(:order_dish).permit :dish_id, :quantity
  end

  def find_order_dish
    @order_dish = OrderDish.find_by id: params[:id]
  end

  def find_order
    @order = Order.find_by id: params[:order_id]
    @order_dish = OrderDish.find_by id: params[:id]
  end

  def load_dish
    @dishes = Dish.all.map {|p| [p.name, p.id]}
  end
end
