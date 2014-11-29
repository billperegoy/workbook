class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_url
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "User successfully update"
      redirect_to @user
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

  def add_book
    @user = User.find(params[:id])
    @books = Book.all.map { |book| book.title }
    #book = Book.find_by(title: 'Book 6')
    #@user.add_book(book)
    #redirect_to user_path
  end

  def record_not_found
    flash[:danger] = 'User not found'
    redirect_to root_path
  end


  private
  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation, :email, :role)
  end

end
