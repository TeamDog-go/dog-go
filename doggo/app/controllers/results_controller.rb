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
    @result = Result.new(result_params)
    if @result.save        
      respond_to do |format|
        format.json { render :show, status: 201 }
      end
    else
      respond_to do |format|
        format.json { render @result.errors, status: 400 }
      end
    end
  end

  private

  def result_params
    params.permit(:score, :user_id, :color)
  end

end
