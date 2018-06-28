class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
    render json: @feedbacks, status: 200
  end

  def show
    @feedback = Feedback.find(params[:id])
    render json: @feedback.errors, status: 400
  end

  private
  
  def feedback_params
    params.permit(:answer_id, :f_content, :f_color)
  end

end
