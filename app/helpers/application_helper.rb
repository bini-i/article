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

  def display_vote_button(article)
    if user_signed_in?
      if current_user.already_voted?(article)
        render "articles/vote", article: article, vote: "down", method: :delete, path: :article_vote_path
      else
        render "articles/vote", article: article, vote: "up", method: :post, path: :article_votes_path
      end
    end
  end
end
