require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  describe 'associations' do
    it { should belong_to(:article) }
  end

  describe 'associations' do
    it { should belong_to(:category) }
  end
end
