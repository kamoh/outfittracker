class User < ActiveRecord::Base
  has_many :outfits
  has_many :clothing_articles

  def top_ten_cas
    top = clothing_articles.sort_by(&:times_worn).reverse
    top[0..9]
  end
end
