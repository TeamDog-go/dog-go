class QuestionSetsController < ApplicationController
    def index
        @question_sets = question_set.all
    end
    
    def show
        @question_set = question_set.find(params[:id])
    end
    
    def create
        @question_set = question_set.new(question_set_params)
        if @question_set.save        
        respond_to do |format|
            format.json { render :show, status: 201 }
        end
        else
        respond_to do |format|
            format.json { render @question_set.errors, status: 400 }
        end
        end
    end
    
    def update
        @question_set = question_set.find(params[:id])
        if @question_set.update(question_set_params)
        render json: @question_set, status: 200
        else 
        render json: @question_set.errors, status: 400
        end
    end
    
    def destroy
        @question_set = question_set.find(params[:id])
        @question_set.destroy
    end
    
    private
    
    def question_set_params
        params.require(:question_set).permit(:source)
    end
      
end
