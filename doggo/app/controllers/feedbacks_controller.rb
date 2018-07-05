class FeedbacksController < ApiController
  def index
    @feedbacks = Feedback.all
    render json: @feedbacks, status: 200
  end

  def show
    @feedback = Feedback.find(params[:id])
    render json: @feedback
  end

  def create
    @feedback = Feedback.new(feedbacks_params)
    if @feedback.save
      render json: @feedback, status: 201 
    else
      render json: @feedback.errors, status: 400 
    end
  end

  private
  
  def feedbacks_params
    params.permit(:f_content, :f_color, :option_id)
  end

end
