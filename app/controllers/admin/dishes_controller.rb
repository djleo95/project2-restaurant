class Admin::DishesController < ApplicationController
  before_action :logged_in_admin
  before_action :find_combo_dish, only: [:destroy, :new]
  before_action :find_category_dish, only: [:destroy, :new]
  before_action :find_dish, except: [:index, :new]

  def index
    @search = Dish.ransack(params[:q])
    @search.sorts = %w(id name price) if @search.sorts.empty?
    @dishes = @search.result.page(params[:page]).per_page Settings.max_result
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new dish_params
    if @dish.save
      flash[:success] = t "flash.dish.create_success"
      redirect_to admin_dish_path @dish
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dish.update_attributes dish_params
      flash[:success] = t "flash.dish.update_success"
      redirect_to admin_dish_path @dish
    else
      render :edit
    end
  end

  def destroy
    if @combo
      @combo.dishes.include? @dish
      if @combo.dishes.delete @dish
        flash[:success] = t "flash.dish.destroy_success"
        redirect_to admin_combo_path @combo
      end
    elsif @category
      @category.dishes.include? @dish
      if @category.dishes.delete @dish
        flash[:success] = t "flash.dish.destroy_success"
        redirect_to admin_category_path @category
      end
    else
      if @dish.destroy
        flash[:success] = t "flash.dish.destroy_success"
      else
        flash[:danger] = t "flash.dish.destroy_fail"
      end
      respond_to do |format|
        format.html {redirect_to :back}
        format.json {head :no_content}
      end
    end
  end

  private
  def dish_params
    params.require(:dish).permit :name, :price, :description, :image, :isAvailable,
      {category_ids: []}
  end

  def find_dish
    @dish = Dish.find_by id: params[:id]
  end

  def find_combo_dish
    @combo = Combo.find_by id: params[:combo_id]
    @dish = Dish.find_by id: params[:id]
  end

  def find_category_dish
    @category = Category.find_by id: params[:category_id]
    @dish = Dish.find_by id: params[:id]
  end
end
