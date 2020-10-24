class HomeController < ApplicationController
  before_action :set_current_user
  before_action :set_current_provider

  def create

  end

  def top
    @provider = Provider.new
    @user = User.new
    @image = Image.find_by(id:1)
    render("/home/top")   
  end

  def logout
    session[:provider_id] = nil
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/home/top")
  end
end
