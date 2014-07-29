class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
    @clothing_articles = ClothingArticle.all
  end

end
