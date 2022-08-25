class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
  end

  def create
    article = Article.new(articles_params)
    article.user = current_user
    if article.save
      redirect_to root_path
    else
      raise
      render :new
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :body)
  end
end
