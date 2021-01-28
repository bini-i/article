class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :author, class_name: 'User'

  has_many :votes
  has_many :voters, through: :votes, source: :user

  has_many :article_categories
  has_many :categories, through: :article_categories

  has_one_attached :image

  def vote_count
    votes.count
  end
end
