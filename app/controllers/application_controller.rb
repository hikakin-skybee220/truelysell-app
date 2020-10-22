class ApplicationController < ActionController::Base

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end
    
    def set_current_provider
        @current_provider = Provider.find_by(id: session[:provider_id])
    end

end
