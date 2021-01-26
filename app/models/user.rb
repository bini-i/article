class User < ApplicationRecord
    has_secure_password 

    validates :name, uniqueness: true
    validates :name, presence: true

    has_many :articles, foreign_key: :author_id

    has_many :votes
    has_many :voted_articles, through: :votes, source: :article

    def up_vote(article)
        voted_articles << article
    end
end
