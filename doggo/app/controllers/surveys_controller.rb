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

  private

  def survey_params
    params.permit(:user_id)
  end

end
