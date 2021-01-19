class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect :root
        else
            render 'new'
        end
    end

    def destroy
    end
end
