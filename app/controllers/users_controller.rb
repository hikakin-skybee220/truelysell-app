class UsersController < ApplicationController
  
  before_action :set_current_user
  before_action :authenticate_user, {only:[:dashboard]}
  


  # def setup    #各テストが実行される直前で実行される
  #   @user = User.new(name: "Example User", email: "user@example.com",
  #   password: "foobar", password_confirmation: "foobar")
  #   #@userにUserクラスのインスタンス（上記のダミー入り）を代入
  # end
 
  # test "should be valid" do
  #   assert @user.valid?
  #   #有効であればtrue →　@userが有効か？
  # end

  def dashboard

  end

  def create
    @provider = Provider.new
    @user = User.new(name: params[:name],
    email: params[:email],
    password: params[:password])

    if @user.save
      redirect_to("/users/dashboard")
      session[:user_id] = @user.id
      # UserMailer.account_activation(@user).deliver_now
      #   flash[:info] = "Please check your email to activate your account."
      #   redirect_to root_url
    else
      flash[:notice] = "登録に失敗しました。「ユーザー新規登録」を押してください。"
      render("/")
    end
  end

  def login    
    @provider = Provider.new
    @user = User.find_by(email: params[:email])    
    if @user && @user.authenticate(params[:password])
      if session[:user_id] or session[:provider_id] or session[:admin_id]
        session[:user_id] == nil
        session[:provider_id] == nil
        session[:admin_id] == nil
      end
      redirect_to("/users/dashboard")
      session[:user_id] = @user.id
    else
      @user = User.new
      @error_message = "メールアドレスまたはパスワードが間違っています"
      flash[:notice] = "ログインに失敗しました。「会員の方はこちら」を押してください。"
      render("/")
    end
  end

    
  def forgot
      
  end

  def confirm 
    @user = User.find_by(email: params[:email])
    if @user
      UserMailer.password_reset(@user).deliver
      redirect_to('/')
    else
      render('/users/password_forgot')
    end
  end
  
end
