class ArticleController < ApplicationController
  def show
    @article = Article.find_by_slug(params[:slug])
  end

  def new
  end

  def edit
  end
end
