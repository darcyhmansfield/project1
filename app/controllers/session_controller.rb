class SessionController < ApplicationController
  def new
  end

  def create

    user = User.find_by :email => params[:email]
    #check if the hashed password matches
    if user.present? && user.authenticate(params[:password])
      # remember this user
      session[:user_id] = user.id
      redirect_to root_path
    else
      #todo: tell them they screwed up
      flash[:error]  = "Invalid username or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
