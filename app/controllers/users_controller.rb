class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, success: "User successfully updated."
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save(user_params)
      redirect_to @user, success: "User successfully created."
    else
      render :new
    end
  end

  def record_not_found
    flash[:danger] = 'User not found'
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email, :role)
  end

end
