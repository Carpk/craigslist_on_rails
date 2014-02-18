class SessionsController < ApplicationController
  def login
  end

  def login_authentication
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to '/'
    end
  end

  def logout
    reset_session
    redirect_to '/'
  end
end
