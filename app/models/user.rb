class User < ApplicationRecord
    has_secure_password 

    validates :name, uniqueness: true
    validates :name, presence: true

    has_many :articles, foreign_key: :author_id

    has_many :votes
    has_many :voted_articles, through: :votes, source: :article

    def already_voted?(article)
        voted_articles.include?(article) ? true : false
    end

    def up_vote(article)
        unless already_voted?(article)
            voted_articles << article 
        else
            false
        end
    end
end
