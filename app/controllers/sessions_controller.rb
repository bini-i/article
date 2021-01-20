class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.find_by(name: params[:session][:name])
        if user && user.authenticate(params[:session][:password])
            session[:id] = user.id
            redirect_back(fallback_location: sign_in_path)
        else
            render 'new'
        end
    end

    def destroy
        session[:id] = nil
    end
end
