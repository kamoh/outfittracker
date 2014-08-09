class ClothingArticlesController < ApplicationController
  before_action :set_user, :check_correct_user
  before_action :set_clothing_article, only: [:show, :edit, :update, :destroy]

  def index
    @worn_clothing_articles = Outfit.where(:user_id => @user.id).order("date DESC").map(&:clothing_articles).flatten.uniq
    @unworn_clothing_articles = @user.clothing_articles.collect do |clothing_article|
      clothing_article if clothing_article.outfits.empty?
    end.compact
  end

  def new
    @clothing_article = ClothingArticle.new
    @clothing_categories = ClothingCategory.all
  end

  def create
    @clothing_article = ClothingArticle.new(clothing_article_params)
    @clothing_article.user = @user
    @clothing_article.save

    redirect_to user_clothing_articles_path(@user)
  end

  def show
  end

  def edit
    @clothing_categories = ClothingCategory.all
  end

  def update
    @clothing_article.update(clothing_article_params)
    redirect_to user_clothing_article_path(@user, @clothing_article)
  end

  def destroy
    @clothing_article.destroy
    redirect_to user_clothing_articles_path(@user)
  end

  private
    def clothing_article_params
      params.require(:clothing_article).permit(:description, :color, :clothing_category_id, :photo)
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_clothing_article
      @clothing_article = ClothingArticle.find(params[:id])
    end

    def check_correct_user
      @user = User.find(params[:user_id])
      if @user.id != current_user.id && @user.id != 1
        redirect_to user_path(current_user)
      end
    end
end


