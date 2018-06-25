class AnswersController < ApplicationController
  def show
    @answer = Answer.find(params[:id])
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    if @answer.save
      respond_to do |format|
        format.json { render :show, status: 201 }
      end
    else
      respond_to do |format|
        format.json { render @answer.errors, status: 400 }
      end
    end
  end

  private

  def answer_params
    params.permit(:value, :question_id)
  end

end
