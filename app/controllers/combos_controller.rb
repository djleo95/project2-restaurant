class CombosController < ApplicationController
  before_action :find_combo, only: :show

  def index
    @combo = Combo.all
    @search = Combo.ransack params[:q]
    @search.sorts = %w(created_at\ desc name discount) if @search.sorts.empty?
    @combos = @search.result.page(params[:page]).per_page Settings.limit
  end

  def show
    @order_combo = current_order.order_combos.new
  end

  private
  def find_combo
    @combo = Combo.find_by id: params[:id]
    unless @combo
      flash[:danger] = t "flash.combo.find_fail"
      redirect_to combos_path
    end
  end
end
