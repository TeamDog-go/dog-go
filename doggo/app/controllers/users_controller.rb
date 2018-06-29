class UsersController < ApiController
    
    def index
        @users = User.all
        render json: @users.map{ |u| u.to_json }, status: 200
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user.to_json, status: 200
        else 
            render json: @user.errors, status: 400 
        end
    end

    def show
        @user = User.find(params[:id])
        if @user
            render json: @user.to_json, status: 200
        else
            render json: @user.errors, status: 400
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json: @user.to_json, status: 200
        else 
          render json: @user.errors, status: 400
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

   


    private

    def user_params
        params.permit(:username, :password)
    end
end
