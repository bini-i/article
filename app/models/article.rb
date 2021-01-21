class Article < ApplicationRecord
    belongs_to :author, class_name: "User"

    has_many :votes
    has_many :voters, through: :votes, source: :user
end
