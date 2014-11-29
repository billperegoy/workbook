class OwnedBooksController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @book = Book.find(params[:book_id])
  end
end
