class ResultsController < ApiController

  def index
    @results = Result.all
    render json: @results
  end

  def show
    @result = Result.find(params[:id])
    render json: @result
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

  def update
    @result = Result.find(params[:id])
    if @result.update(result_params)
      render json: @result, status: 200
    else 
      render json: @result.errors, status: 400
    end
  end

  def destroy
    @result = Result.find(params[:id])
    if @result.destroy
      render json: @result.errors, status: 202
    end
  end

  private

  def result_params
    params.permit(:initial_feeling, :final_feeling, :final_score, :survey_id, :color)
  end

end
