class CategoriesController < ApplicationController
  def index
    @categories = Category.joins(:article_categories).order(priority: :desc)
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order(created_at: :desc)
  end
end
