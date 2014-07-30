class ClothingArticlesController < ApplicationController
  
  def index
    @clothing_articles = ClothingArticle.all
  end

  def new
    @clothing_article = ClothingArticle.new
    @clothing_categories = ClothingCategory.all
  end

  def create
    @clothing_article = ClothingArticle.new(clothing_article_params)
    @clothing_article.save

    redirect_to clothing_articles_path
  end

  private

  def clothing_article_params
    params.require(:clothing_article).permit(:description, :color, :clothing_category_id, :photo)
  end

end
