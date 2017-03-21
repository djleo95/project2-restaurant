class TablesController < ApplicationController
  def index
    @guest = Guest.new
    if params[:orders_day_eq]
      @tables = Table.where("capacity >= ? AND id NOT IN (?)", params[:capacity_gteq],
        Order.where("day = ? AND time_in = ?",
        params[:orders_day_eq].to_time.to_i*1000,
        params[:orders_time_in_eq]).select("table_id"))
    else
      @tables = Table.all
    end
    respond_to do |format|
      format.html
      format.json {render json: @tables}
    end
  end
end
