class TimestampsController < ApiController

    def show
        @category = Category.find(params[:id])
    end
end
