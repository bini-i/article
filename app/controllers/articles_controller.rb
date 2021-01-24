class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new

    end

    def create
        @article = Article.new
    end

    private
    def article_params
        params.require(:article).permit(:title, :text, :image)
    end
end
