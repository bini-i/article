class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name])
    if user&.authenticate(params[:session][:password])
      session[:id] = user.id
      flash[:notice] = 'Successfully logged in.'
      redirect_to root_path
    else
      flash.now[:alert] = 'Wrong name or password. Please try again.'
      render 'new'
    end
  end

  def destroy
    session[:id] = nil
    flash[:notice] = 'You have logged out.'
    redirect_to sign_in_path
  end
end
