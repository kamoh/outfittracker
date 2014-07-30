class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
    @clothing_articles = ClothingArticle.all
    @friends = Friend.all
    # @clothing_article = ClothingArticle.new
    # @clothing_categories = ClothingCategory.all
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.save
    
    redirect_to outfits_path
    # redirect_to 'outfits#index'
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def edit
    @outfit = Outfit.find(params[:id])
    @clothing_articles = ClothingArticle.all
    @friends = Friend.all
  end

  def update
    @outfit = Outfit.find(params[:id])
    @outfit.update(outfit_params)
    
    redirect_to @outfit
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
    redirect_to outfits_path
  end


  private
  def outfit_params
    params.require(:outfit).permit(:date, :clothing_article_ids => [], :friend_ids => [])
    # params.require(:outfit).
    #   permit(:date, :clothing_article_ids => [], 
    #          :clothing_articles_attributes => 
    #          [:description, :color, :clothing_category_id])
  end

end
