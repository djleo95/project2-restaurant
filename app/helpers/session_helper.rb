module SessionHelper
  def log_in admin
    session[:admin_id] = admin.id
  end

  def current_admin
    @current_admin ||= Admin.find_by id: session[:admin_id]
  end

  def current_order
    if session[:order_id].present?
      if Order.find_by id: session[:order_id]
        Order.find_by id: session[:order_id]
      else
        Order.new
      end
    else
      Order.new
    end
  end

  def current_guest guest
    session[:guest] = guest
  end

  def logged_in?
    current_admin.present?
  end

  def log_out
    session.delete :admin_id
    @current_admin = nil
  end
end
