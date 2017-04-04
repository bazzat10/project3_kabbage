class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      redirect_to '/new'
    end
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :password)
  end


end
