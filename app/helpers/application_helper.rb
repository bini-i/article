module ApplicationHelper
    def popular_article
        popular_article = Article.first
        Article.all.each do |article|
            popular_article = article if article.votes.count > popular_article.votes.count
        end
        popular_article
    end

    def latest_article(category)
        category.articles.order(created_at: :desc).first
    end

    def get_vote(article)
        current_user.votes.where(article_id: article.id).take
    end
end
