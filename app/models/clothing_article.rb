class ClothingArticle < ActiveRecord::Base
  belongs_to :clothing_type
  has_many :clothing_article_outfits
  has_many :outfits, through: :clothing_article_outfits
end
