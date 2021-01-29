class User < ApplicationRecord
  has_secure_password

  validates :user_name, uniqueness: true
  validates :user_name, presence: true

  has_many :articles, foreign_key: :author_id

  has_many :votes
  has_many :voted_articles, through: :votes, source: :article

  def already_voted?(article)
    voted_articles.include?(article) ? true : false
  end

  def up_vote(article)
    if already_voted?(article)
      false
    else
      voted_articles << article
    end
  end
end
