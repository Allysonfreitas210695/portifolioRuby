class UsersController < ApplicationController
  before_action :get_users, only: [:index]
  before_action :get_user, only: [:index]

  def index; end

  def show; end

  def new 
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to users_path, notice: 'User was successfully created'
    else  
      render :new
    end
  end

  private

  def get_users
    @users = User.all
  end

  def params_user
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

  def get_user
    @user = User.find(params[:id])
  end
end
