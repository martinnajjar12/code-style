class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @author = Author.find(current_author.id)
    @article = Article.new
  end

  def create
    @author = Author.find(params[:author_id])
    @article = @author.articles.build(article_params)

    if @article.save
      redirect_to root_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
