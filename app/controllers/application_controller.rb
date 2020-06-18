class ApplicationController < ActionController::Base

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
      flash[:error] = 'Please login to perform this action!'
      redirect_to login_path
    end
  end
end
