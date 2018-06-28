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
    params.permit(:user_id, :source)
  end

end
