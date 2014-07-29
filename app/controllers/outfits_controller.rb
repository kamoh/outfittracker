class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
    @clothing_articles = ClothingArticle.all
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.save
    
    redirect_to outfits_path
    # redirect_to 'outfits#index'
  end

  private
  def outfit_params
    params.require(:outfit).permit(:date, :clothing_article_ids => [])
  end

end
