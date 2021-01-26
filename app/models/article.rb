class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :author, class_name: 'User'

  has_many :votes
  has_many :voters, through: :votes, source: :user

  has_many :article_categories
  has_many :categories, through: :article_categories

  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

  def vote_count
    votes.count
  end
end
