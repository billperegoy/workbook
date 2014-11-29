class BooksController < ApplicationController
  def index
    if admin_user?
      @books = Book.all
    else
      redirect_non_admin_user
    end
  end

  def show
    if admin_user?
      @book = Book.find(params[:id])
    else
      redirect_non_admin_user
    end
  end

  def edit
    if admin_user?
      @book = Book.find(params[:id])
    else
      redirect_non_admin_user
    end
  end

  def update
    if admin_user?
      @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to @book, notice: "Book successfully updated."
      else
        render :edit
      end
    else
      redirect_non_admin_user
    end
  end

  def new
    if admin_user?
      @book = Book.new
    else
      redirect_non_admin_user
    end
  end

  def create
    if admin_user?
      @book = Book.new(book_params)
      if @book.save(book_params)
        redirect_to @book, notice: "Book successfully created."
      else
        render :new
      end
    else
      redirect_non_admin_user
    end
  end

  private
  def redirect_non_admin_user
    if logged_in?
      redirect_to user_path(current_user)
    else
      redirect_to root_path 
    end
  end

  def book_params
    params.require(:book).permit(:title, :thumbnail, :descrition, :price)
  end
end
