class ProvidersController < ApplicationController
  before_action :set_current_provider
  before_action :authenticate_provider, {only:[:dashboard]}

  def login_screen
    
  end

  def dashboard

  end

  def create
    @user = User.new
    @provider = Provider.new(name: params[:name],
    email: params[:email],
    password: params[:password])

    if @provider.save
      if session[:user_id] or session[:provider_id]
        session[:user_id] == nil
        session[:provider_id] == nil
      end
      redirect_to("/providers/dashboard")
      session[:provider_id] = @provider.id
    else
      @provider = Provider.new
      flash[:notice] = "登録に失敗しました。「法人の方は、こちら」を押してください。"
      render("/home/top")
    end
  end

  def login
    @provider = Provider.find_by(email: params[:email])
    if @provider && @provider.authenticate(params[:password])
      if session[:user_id] or session[:provider_id]
        session[:user_id] == nil
        session[:provider_id] == nil
      end
      redirect_to("/providers/dashboard")
      session[:provider_id] = @provider.id
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      render("/providers/login_screen")
    end
  end


end
