module ApplicationHelper
  def popular_article
    Article.where(id: Vote.group(:article_id).count(:user_id).max[0]).take
  end

  def latest_article(category)
    category.articles.order(created_at: :desc).first
  end

  def get_vote(article)
    current_user.votes.where(article_id: article.id).take
  end
end
