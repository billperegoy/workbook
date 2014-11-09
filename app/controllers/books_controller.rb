class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "Book successfully updated."
    else
      render :edit
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save(book_params)
      redirect_to @book, notice: "Book successfully created."
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :thumbnail, :descrition, :price)
  end
end
