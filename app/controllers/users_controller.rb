class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:name, :email, :password))
    @user.save
    redirect_to root_path
  end

  def show
  #   @user = User.where(email: params[:user][:email] && password: params[:user][:password])
  #   if !@user.present?
  #     render 'welcome/index'
  #   end
  end
end
