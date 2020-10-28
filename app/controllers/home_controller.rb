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
    session[:user_id] = nil
  end

  def logout
    session[:provider_id] = nil
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

  def mail
    TestMailer.testmail(params[:str]).deliver_later  #メーラに作成したメソッドを呼び出す。
    flash[:notice] = "メール送信完了" 
    redirect_to "/"
  end

end
