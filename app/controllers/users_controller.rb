class UsersController < ApplicationController
  before_action :set_current_user
  before_action :authenticate_user, {only:[:dashboard]}

  def dashboard

  end

  def create
    @user = User.new(name: params[:name],
    email: params[:email],
    password: params[:password])

    if @user.save
      redirect_to("/users/dashboard")
      session[:user_id] = @user.id
    else
      render("/home/top")
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    @provider = Provider.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      redirect_to("/users/dashboard")
      session[:user_id] = @user.id
    else
      render("/home/top")
    end
    
  end

  
end
