class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end 

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        byebug
        if @article.save
            flash[:notice] = "Article successfully created."
            redirect_to articles_path
        else
            flash.now[:alert] = "Incorrect input. Please try again."
            render "new"
        end
    end

    private
    def article_params
        params.require(:article).permit(:title, :text, :image)
    end
end
