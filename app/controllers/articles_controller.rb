class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_param)
    if @article.save
      redirect_to articles_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def articles_param
    params.require(:article).permit!
  end
end