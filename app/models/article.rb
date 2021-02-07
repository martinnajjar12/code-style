class Article < ApplicationRecord
  belongs_to :author
  has_many :votes
  has_many :article_categories
  has_many :categories, through: :article_categories

  def article_categories
    categories.collect(&:name).join(', ')
  end

  def article_categories=(string)
    categories_names = string.split(',').collect { |s| s.strip.downcase }.uniq
    new_or_found_categories = categories_names.collect { |name| Category.find_or_create_by(name: name) }
    self.categories = new_or_found_categories
  end
end
