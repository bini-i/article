class Article < ApplicationRecord
    validates :title, presence: true
    validates :text, presence: true
    
    belongs_to :author, class_name: "User"

    has_many :votes
    has_many :voters, through: :votes, source: :user
end
