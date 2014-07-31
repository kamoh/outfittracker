class User < ActiveRecord::Base
  has_many :outfits
  has_many :clothing_articles
end
