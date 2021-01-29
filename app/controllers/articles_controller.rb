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
    category = Category.find(params[:article][:categories])
    if (current_user.articles << @article && @article.categories << category)
      flash[:notice] = 'Article successfully created.'
      redirect_to category_path(category)
    else
      flash.now[:alert] = 'Incorrect input. Please try again.'
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = 'Article is successfully updated...'
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
end
