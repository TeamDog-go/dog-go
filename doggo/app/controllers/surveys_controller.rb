class SurveysController < ApplicationController
  def index
    @surveys = Survey.all 
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save     
      respond_to do |format|
        format.json { render :show, status: 201 }
      end
    else
      respond_to do |format|
        format.json { render @survey.errors, status: 400 }
      end
    end
  end

  def update
    @survey = Survey.find(params[:id])
    if @survey.update(survey_params)
      render json: @survey, status: 200
    else 
      render json: @survey.errors, status: 400
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
  end

  private

  def survey_params
    params.require(:survey).permit(:user_id, result_attributes: [:final_score, :initial_feeling, :final_feeling, :color], questions_attributes: [:id, :content, :source, :answers_attributes => [:a_content, :a_color, :points]])
  end

end