class SessionsController < ApplicationController
 
  def new
  end

  def create
    user = User.find_email(params[:email]) 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "You're Logged in!" 
    else
      flash.now.alert = "Your Email or Password is invalid!"
      render "new"
    end
  end

  def destroy
    redirect_to root_url, notice: "Logged out!"
  end
end
