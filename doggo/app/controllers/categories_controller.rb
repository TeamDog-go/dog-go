class CategoriesController < ApplicationController
  def index
    @categories = category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save        
      respond_to do |format|
        format.json { render :show, status: 201 }
      end
    else
      respond_to do |format|
        format.json { render @category.errors, status: 400 }
      end
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      render json: @category, status: 200
    else 
      render json: @category.errors, status: 400
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:source, questions_attributes: [:id, :content])
  end

end
