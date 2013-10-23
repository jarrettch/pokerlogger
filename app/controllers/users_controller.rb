class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(params[:user].permit(:email, :password, :password_confirmation))
    redirect_to sessions_url  
  end

end