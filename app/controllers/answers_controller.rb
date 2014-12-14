class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @page = @question.page
    @book = @page.book
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params.merge(user_id: current_user.id))
    if @answer.save(answer_params)
      redirect_to add_content_to_book_path(id: current_user)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @page = @question.page
    @book = @page.book
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      redirect_to add_content_to_book_path(id: current_user)
    else
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to add_content_to_book_path(id: current_user)
  end

  private
  def answer_params
    params.require(:answer).permit(:value)
  end
end
