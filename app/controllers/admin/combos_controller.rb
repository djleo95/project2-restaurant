class Admin::CombosController < ApplicationController
  before_action :logged_in_admin
  before_action :find_combo, except: [:index, :new, :create]

  def index
    @search = Combo.ransack params[:q]
    @search.sorts = %w[id] if @search.sorts.empty?
    @combos = @search.result.page(params[:page]).per_page Settings.max_result
  end

  def show
    @combo = Combo.includes(:dishes).find(params[:id])
  end

  def new
    @combo = Combo.new
  end

  def create
    @combo = Combo.new combo_params
    if @combo.save
      flash[:success] = t "flash.combo.create_success"
      redirect_to admin_combo_path @combo
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @combo.update_attributes combo_params
      flash[:success] = t "flash.combo.update_success"
      redirect_to admin_combo_path @combo
    else
      render :edit
    end
  end

  def destroy
    if @combo.destroy
      flash[:success] = t "flash.combo.destroy_success"
    else
      flash[:danger] = t "flash.combo.destroy_fail"
    end
    respond_to do |format|
      format.html {redirect_to :back}
      format.json {head :no_content}
    end
  end

  private
  def combo_params
    params.require(:combo).permit :name, :discount, :description, :image,
      {dish_ids: []}
  end

  def find_combo
    @combo = Combo.find_by id: params[:id]
    unless @combo
      flash[:danger] = t "flash.combo.find_fail"
      redirect_to admin_combos_path
    end
  end
end
