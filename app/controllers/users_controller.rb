class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the blog #{@user.username}!!Signup successful!"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end

end