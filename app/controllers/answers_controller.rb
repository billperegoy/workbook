class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @page = @question.page
    @book = @page.book

    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params.merge(user_id: current_user.id))
    @page = @question.page
    @book = @page.book

    if @answer.save(answer_params)
      redirect_to book_page_path(@book, @page)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @page = @question.page
    @book = @page.book
    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @page = @question.page
    @book = @page.book
    if @answer.update(answer_params)
      redirect_to book_page_path(@book, @page)
    else
    @page = @question.page
    @book = @page.book
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    @question = @answer.question
    @page = @question.page
    @book = @page.book
    redirect_to book_page_path(@book, @page)
  end

  private
  def answer_params
    params.require(:answer).permit(:value)
  end
end
