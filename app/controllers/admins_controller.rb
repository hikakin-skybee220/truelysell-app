class AdminsController < ApplicationController
  # before_action :set_current_admin
  # before_action :authenticate_admin, {only:[:index]}

  def index
  end

  def login

  end

  def create
    @admin = Admin.find_by(name:params[:name])

    if @admin && @admin.authenticate(params[:password])
      if session[:user_id] or session[:provider_id] or session[:admin_id]
        session[:user_id] == nil
        session[:provider_id] == nil
        session[:admin_id] == nil
      end
      redirect_to("/admin/index")
      session[:admin_id] = @admin.id
    else
      render("/admins/login")
    end
  end

end

