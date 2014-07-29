class Outfit < ActiveRecord::Base
  has_many :clothing_article_outfits
  has_many :clothing_articles, through: :clothing_article_outfits
end
