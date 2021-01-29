class CategoriesController < ApplicationController
  def index
    @categories = Category.joins(:article_categories).order(priority: :desc)
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order(created_at: :desc)
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category successfully created.'
      redirect_to root_path
    else
      flash.now[:alert] = 'Incorrect input. Please try again.'
      render 'new'
    end
  end

  def new
    @category = Category.new
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
