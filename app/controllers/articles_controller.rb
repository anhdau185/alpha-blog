# frozen_string_literal: true

# Controller for articles
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
  end
end
