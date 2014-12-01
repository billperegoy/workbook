class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @page = @question.page
    @book = @page.book
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save(answer_params)
      redirect_to edit_owned_book_path(id: current_user)
    else
      render :new
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:value)
  end
end
