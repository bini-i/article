class User < ApplicationRecord
  has_secure_password

  validates :user_name, uniqueness: true
  validates :user_name, presence: true
  validates :user_name, length: { in: 3..10 }
  validates :password, length: { in: 6..20 }

  has_many :articles, foreign_key: :author_id, dependent: :destroy

  has_many :votes, dependent: :destroy
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
