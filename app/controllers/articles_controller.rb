class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @author = Author.find(current_author.id)
    @category = Category.new
    @article = Article.new
  end

  def create
    @author = Author.find(params[:author_id])
    @article = @author.articles.build(article_params)
    # categories = params[:category].split(',');
    # categories.each do |cat|
      # @category = Category.new(name: 'cat');
      # if @category.save
        # @article.categories << @category
        # @category.articles << @article
      # end
    # end

    if @article.save
      redirect_to root_path
    end
  end

  def article_categories
    categories.join(', ')
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :article_categories)
  end
end
