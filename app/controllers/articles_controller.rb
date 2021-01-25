class ArticlesController < ApplicationController
    before_action :require_login

    def index
        @articles = Article.all
    end 

    def new
        # byebug
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        # byebug
        current_user.articles << @article 
        if current_user.articles << @article
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
