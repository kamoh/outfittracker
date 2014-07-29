class ClothingArticleOutfit < ActiveRecord::Base
  belongs_to :clothing_article
  belongs_to :outfit
end
