require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    subject {User.new(name: "user1")}
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe "associations" do
    it { should have_many(:articles) }
    it { should have_many(:votes)}
    it { should have_many(:voted_articles).through(:votes) }
  end
end
