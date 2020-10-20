class UsersController < ApplicationController

  def login_screen

  end

  def create
    @user = User.new(email: params[:email],
    phone: params[:phone],
    password: params[:password])

    if @user.save
      redirect_to("/users/dashboard")
    else
      render("/home/top")
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    @provider = Provider.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      redirect_to("/users/dashboard")
    else
      render("/users/login_screen")
    end
    
  end
end
