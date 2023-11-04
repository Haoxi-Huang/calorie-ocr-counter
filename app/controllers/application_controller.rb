class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def require_authentication
    redirect_to root_path, alert: 'Requires authentication' unless user_signed_in?
  end

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def user_signed_in?
    current_user.present?
  end
end
