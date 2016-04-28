class ArticlesController < ApplicationController

  def index
    if params[:tag].present?
      load_articles_by_tag
    end

    if params[:category].present?
      load_articles_by_category
    end

    if params[:tag].nil? && params[:category].nil?
      load_articles
    end
  end


  def show
    load_article
    load_related_articles
  end


  private

    def load_articles
      @articles ||= Article.all
    end

    def load_article
      @article = Article.find(params[:id])
    end

    def load_articles_by_tag
      @articles = Article.tagged_with(params[:tag])
    end

    def load_articles_by_category
      @articles = Article.joins(:categories).where(categories: {title: params[:category]})
    end

    def load_related_articles
      @related_articles = Article.tagged_with(@article.tag_list).where('articles.id != ?', @article.id).limit(4)
    end

end
