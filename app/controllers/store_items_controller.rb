class StoreItemsController < ApplicationController
  def index
    @books = Book.all
  end

  def add_to_cart
    book = Book.find(params[:id])
    current_user.add_book(book)
    redirect_to user_path(current_user)
  end
end
