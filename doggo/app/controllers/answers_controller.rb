class AnswersController < ApiController
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

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      render json: @answer, status: 200
    else 
      render json: @answer.errors, status: 400
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
  end

  private

  def answer_params
    params.permit(:question_id, :a_content, :a_color)
  end

end
