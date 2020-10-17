class ProvidersController < ApplicationController
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
end
