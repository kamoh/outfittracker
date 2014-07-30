class ClothingArticlesController < ApplicationController
  
  def index
    @clothing_articles = Outfit.order("date DESC").map(&:clothing_articles).flatten.uniq
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

  def edit
    # raise params.inspect
    @clothing_article = ClothingArticle.find(params[:id])
    @clothing_categories = ClothingCategory.all
  end

  def update
    @clothing_article = ClothingArticle.find(params[:id])
    @clothing_article.update(clothing_article_params)
    redirect_to @clothing_article
  end

  def destroy
    # raise params.inspect
    @clothing_article = ClothingArticle.find(params[:id])
    @clothing_article.destroy
    redirect_to clothing_articles_path
  end

  def show
    @clothing_article = ClothingArticle.find(params[:id])
  end

  private

  def clothing_article_params
    params.require(:clothing_article).permit(:description, :color, :clothing_category_id, :photo)
  end

end


