class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Account successfully created."
            redirect_to :root
        else
            flash[:alert] = "Incorrect input. Please try again."
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
