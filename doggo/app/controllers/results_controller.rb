class ResultsController < ApplicationController

  def index
    @results = Result.all
    render json: @results
  end

  def show
    @result = Result.find(params[:id])
    @user = User.find(@result.user_id)
    respond_to do |format|
      format.json do 
        render json: {
          user_id: @user.id,
          user_questions: @user.questions,
          user_answers: @user.answers,
          result: @user.results
      }.to_json
      end
    end
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

  private

  def question_params
    params.permit(:content)
  end

end
