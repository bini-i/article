require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { User.new(name: 'user1') }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
    it { should have_many(:voted_articles).through(:votes) }
  end

  describe 'instance methods' do
    describe '#already_voted?' do
      it 'checks if a user voted for an article' do
        user1 = User.create(id: 1, name: 'user1', password: '123456', password_confirmation: '123456')
        article1 = Article.new(id: 1, title: 'article1', text: 'content')
        user1.articles << article1
        Vote.create(id: 1, user_id: 1, article_id: 1)
        expect(user1.already_voted?(article1)).to be true
      end
    end
    describe '#upvote' do
      it 'adds a vote record of a user and article' do
        user1 = User.create(id: 1, name: 'user1', password: '123456', password_confirmation: '123456')
        user2 = User.create(id: 2, name: 'user2', password: '123456', password_confirmation: '123456')
        article2 = Article.new(id: 2, title: 'article2', text: 'content')
        user2.articles << article2
        user1.up_vote(article2)
        expect(Vote.find_by(user_id: 1, article_id: 2)).to_not eq nil
      end
    end
  end
end
