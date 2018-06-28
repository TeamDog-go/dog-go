class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    if @question.save        
      respond_to do |format|
        format.json { render :show, status: 201 }
      end
    else
      respond_to do |format|
        format.json { render @question.errors, status: 400 }
      end
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      render json: @question, status: 200
    else 
      render json: @question.errors, status: 400
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end

  private

  def question_params
    params.permit(:content, :survey_id)
  end
end
