class OptionsController < ApplicationController
    def create
        @option = Option.new(options_params)
        if @option.save
            respond_to do |format|
                format.json { render :show, status: 201 }
                end
        else
            respond_to do |format|
                format.json { render @answer.errors, status: 400 }
            end
        end
    end

    def show
        @option = Option.find(params[:id])
        render json: @option
    end

    def destroy
        @option = Option.find(params[:id])
        @option.destroy
    end

    private
    
    def options_params
        params.permit(:o_content, :question_id, :o_color, :avail_points)
    end
end
