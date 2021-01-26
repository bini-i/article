class ArticlesController < ApplicationController
  before_action :require_login

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    category = Category.find(params[:category_id])
    if current_user.articles << @article
      @article.categories << category
      flash[:notice] = 'Article successfully created.'
      redirect_to category_path(category)
    else
      flash.now[:alert] = 'Incorrect input. Please try again.'
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
end
