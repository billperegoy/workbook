class PagesController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @page = Page.new
  end

  def create
    @book = Book.find(params[:book_id])
    @page = @book.pages.new(page_params)
    if @page.save(page_params)
      redirect_to @book, notice: "Page successfully created."
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:book_id])
    @page = Page.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end

  def edit
    @page = Page.find(params[:id])
    @book = @page.book
  end

  def update
    @page = Page.find(params[:id])
    @book = @page.book
    if @page.update(page_params)
      redirect_to @book, notice: "Page successfully updated."
    else
      render :edit
    end
  end

  private
  def page_params
    params.require(:page).permit(:title, :description)
  end
end
