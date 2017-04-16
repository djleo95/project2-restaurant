class Admin::CategoriesController < ApplicationController
  before_action :logged_in_admin
  before_action :find_category, except: [:index, :new, :create]

  def index
    @search = Category.ransack params[:q]
    @search.sorts = %w[id] if @search.sorts.empty?
    @categories = @search.result.page(params[:page]).per_page Settings.max_result
  end

  def show
    @category = Category.includes(:dishes).find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = t "flash.category.create_success"
      redirect_to admin_category_path @category
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update_attributes category_params
      flash[:success] = t "flash.category.update_success"
      redirect_to admin_category_path @category
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:success] = t "flash.category.delete_success"
    else
      flash[:danger] = t "flash.category.delete_fail"
    end
    redirect_to admin_categories_path
  end

  private
  def category_params
    params.require(:category).permit :name, :description, {dish_ids: []}
  end

  def find_category
    @category = Category.find_by id: params[:id]
    unless @category
      flash[:danger] = t "flash.category.find_fail"
      redirect_to admin_categories_path
    end
  end
end
