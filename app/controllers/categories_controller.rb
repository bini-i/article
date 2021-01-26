class CategoriesController < ApplicationController
    def index
        @categories = Category.all.order(priority: :asc)
    end

    def show
        @category = Category.find(params[:id])
        @articles = @category.articles
    end
end
