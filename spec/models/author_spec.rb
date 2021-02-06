require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'associations' do
    it { should have_many(:articles) }
  end

  describe 'associations' do
    it { should have_many(:votes) }
  end
end
