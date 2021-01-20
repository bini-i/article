module ApplicationHelper
    def current_user
        @current_user ||= User.find(session[:id]) if session[:id]
    end

    def user_signed_in?
        current_user ? true : false 
    end
end
