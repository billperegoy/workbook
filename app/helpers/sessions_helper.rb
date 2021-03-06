module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
    session[:user_name] = user.name
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_username
    current_user.username
  end

  def logged_in?
    !current_user.nil?
  end

  def admin_user?
    current_user && current_user.role == 'admin'
  end

  def log_out
    session.delete(:user_id)
    session.delete(:user_name)
    @current_user = nil
    redirect_to root_path
  end
end
