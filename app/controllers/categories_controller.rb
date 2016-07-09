class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create

    cat = Category.new(category_params)
    cat.save
    flash[:notice] = "Category successfuly added"
    redirect_to categories_path

  end

  
  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'      
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
end


private

def category_params

  params.require(:category).permit(:name)
  
end