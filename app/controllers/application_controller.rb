class ApplicationController < ActionController::Base
    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end
      
    def set_current_provider
        @current_provider = Provider.find_by(id: session[:provider_id])
    end
      
    # def　set_current_admin
    #     @current_admin = Admin.find_by(id: session[:admin_id])
    # end
      
    def authenticate_user
        if @current_user == nil
            flash[:notice] = "ログインが必要です"
            redirect_to("/")
        end
    end
      
    def authenticate_provider
        if @current_provider == nil
            flash[:notice] = "ログインが必要です"
            redirect_to("/providers/login_screen")
        end
    end
      
end

