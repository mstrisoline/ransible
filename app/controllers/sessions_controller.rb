class SessionsController < ApplicationController
  skip_before_filter :authenticate_user!
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      current_user = user
      redirect_to root_url, notice: { class: "info", body: "Logged In!" }
    else
      flash[:notice] = { class: "warning", body: "Invalid email or password" }
      redirect_to login_path(email: params[:email].downcase)
    end
  end

  def destroy
    session[:user_id] = nil
    current_user = nil
    redirect_to login_path, notice:{ class: "info", body: "Logged Out!" }
  end
end
