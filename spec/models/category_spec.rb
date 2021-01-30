require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validations' do
    subject { Category.new(name: 'user1') }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:article_categories) }
    it { should have_many(:articles).through(:article_categories) }
  end
end
