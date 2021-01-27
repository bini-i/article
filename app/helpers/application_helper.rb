module ApplicationHelper
  def popular_article
    return Article.first unless Vote.any?

    Article.where(id: Vote.group(:article_id).count(:user_id).invert.max[1]).take
  end

  def latest_article(category)
    category.articles.order(created_at: :desc).first
  end

  def get_vote(article)
    current_user.votes.where(article_id: article.id).take
  end
end
