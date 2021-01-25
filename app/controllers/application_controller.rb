class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find(session[:id]) if session[:id]
    end

    def user_signed_in?
        current_user ? true : false 
    end

    def require_login
        unless user_signed_in?
            flash[:alert] = "You must be logged in to access this section"
            redirect_to sign_in_path
        end
    end

    helper_method :user_signed_in?, :current_user
end
