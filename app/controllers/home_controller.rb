class HomeController < ApplicationController
  def index
    @articles = Article.order("created_at desc").first(10)
  end
end
