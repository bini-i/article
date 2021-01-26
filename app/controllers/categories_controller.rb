class CategoriesController < ApplicationController
    def index
        @categories = Category.all.order(priority: :desc)
    end

    def show
        @category = Category.find(params[:id])
        @articles = @category.articles.order(created_at: :desc)
    end
end
