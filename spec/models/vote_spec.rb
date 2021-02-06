require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'associations' do
    it { should belong_to(:article) }
  end

  describe 'associations' do
    it { should belong_to(:author) }
  end
end
