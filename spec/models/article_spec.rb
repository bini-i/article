require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
  end

  describe "associations" do
    it { should belong_to(:author) }
    it { should have_many(:votes) }
    it { should have_many(:voters).through(:votes) }
  end
end
