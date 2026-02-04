class AdminController < ApplicationController
  before_action :authenticate_admin!, except: [:login, :create_session]

  def dashboard
  end

  def login
    if session[:admin_id]
      redirect_to admin_dashboard_path
    end
  end

  def create_session
    if params[:password] == ENV["ADMIN_PASSWORD"]&.strip
      session[:admin_id] = true
      redirect_to admin_dashboard_path
    else
      flash.now[:alert] = "Incorrect Password"
      render :login
    end
  end

  def logout
    reset_session
    redirect_to root_path, notice: "Logged out"
  end

  private

  def authenticate_admin!
    unless session[:admin_id]
      redirect_to admin_login_path, alert: "Please login first"
    end
  end
end
