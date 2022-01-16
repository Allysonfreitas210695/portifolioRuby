class UsersController < ApplicationController
  before_action :get_users, only: [:index]
  
  def index; end

  def new 
    @user = User.new
  end

  def create
  end

  private

  def get_users
    @users = User.all
  end
end
