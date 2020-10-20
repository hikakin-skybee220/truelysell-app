class ProvidersController < ApplicationController

  def login_screen

  end

  def create
    @provider = Provider.new(email: params[:email],
    phone: params[:phone],
    password: params[:password])

    if @provider.save
      redirect_to("/providers/dashboard")
    else
      render("/home/top")
    end
  end

  def login
    @provider = Provider.find_by(email: params[:email])
    if @provider && @provider.authenticate(params[:password])
      redirect_to("/providers/dashboard")
    else
      render("/providers/login_screen")
    end
  end
end
