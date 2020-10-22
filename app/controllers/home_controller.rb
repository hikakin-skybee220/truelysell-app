class HomeController < ApplicationController
  before_action :set_current_user
  before_action :set_current_provider

  def create

  end

  def top
    @image = Image.find_by(id:1)
    render("/home/top")
    session[:provider_id] = nil
  end
end
