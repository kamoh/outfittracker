class ClothingCategory < ActiveRecord::Base
  has_many :clothing_articles
end
