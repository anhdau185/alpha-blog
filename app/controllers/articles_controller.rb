# frozen_string_literal: true

# Controller for articles
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new; end

  def create
    article_details = params.require(:article).permit(:title, :description)
    @article = Article.new(article_details)
    @article.save
    redirect_to article_path(@article)
  end
end
