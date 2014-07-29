class ClothingType < ActiveRecord::Base
  has_many :clothing_articles
end
