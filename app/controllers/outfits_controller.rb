class OutfitsController < ApplicationController
  before_action :set_user, :check_correct_user

  def index
    @outfits = Outfit.where(:user_id => @user.id).order("date DESC")
  end

  def new
    @outfit = Outfit.new
    @clothing_articles = ClothingArticle.where(:user_id => @user.id)
    @friends = @user.friends

    @clothing_categories = ClothingCategory.where(:user_id => @user.id)
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = @user
    @outfit.save
    redirect_to user_outfits_path(@user)
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def edit
    @outfit = Outfit.find(params[:id])
    @clothing_articles = ClothingArticle.all
    @friends = @user.friends
  end

  def update
    @outfit = Outfit.find(params[:id])
    @outfit.update(outfit_params)
    
    redirect_to user_outfit_path(@user, @outfit)
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
    redirect_to user_outfits_path(@user)
  end


  private
    def outfit_params
      params.require(:outfit).permit(:date, :clothing_article_ids => [], :friend_ids => [])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def check_correct_user
      @user = User.find(params[:user_id])
      if @user.id != 1
        if current_user
          redirect_to user_path(current_user) if current_user.id != @user.id
        else
          redirect_to root_path
        end
      end
    end
end
