class ApplicationController < ActionController::Base
  
  protect_from_forgery
  before_filter :authenticate_user!

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    if current_user.nil?
      flash[:notice] = { class: "warning", body: "You must log in to see this page" }
      redirect_to login_url
    end
  end
end
