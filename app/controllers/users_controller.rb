class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.new(params[:user].permit(:name, :email, :password, :password_confirmation, :phone))
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end

  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

end
