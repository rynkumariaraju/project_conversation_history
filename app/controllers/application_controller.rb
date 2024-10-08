class ApplicationController < ActionController::Base
    helper_method :current_user
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      !!current_user
    end
  
    # You can add a method to protect certain actions if needed
    def require_user
      redirect_to login_path unless logged_in?
    end
  end
  