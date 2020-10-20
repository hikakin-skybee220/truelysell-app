class AdminsController < ApplicationController
  def index
  end

  def login

  end

  def create
    @admin = Admin.find_by(name:params[:name],
    password_digest: params[:password])

    if @admin 
      redirect_to("/admin/index")

    else
      render("/admins/login")
    end
  end

end
