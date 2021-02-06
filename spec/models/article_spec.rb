require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should belong_to(:author) }
  end

  describe 'associations' do
    it { should have_many(:categories).through(:article_categories) }
  end

  describe 'associations' do
    it { should have_many(:article_categories) }
  end

  describe 'associations' do
    it { should have_many(:votes) }
  end
end
