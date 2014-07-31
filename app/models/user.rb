class User < ActiveRecord::Base
  has_many :outfits
  has_many :clothing_article_outfits, through: :outfits
  has_many :clothing_articles, through: :clothing_article_outfits
end
