class Outfit < ActiveRecord::Base
  has_many :clothing_article_outfits
  has_many :clothing_articles, through: :clothing_article_outfits
  has_many :clothing_categories, through: :clothing_articles
  has_many :sightings
  has_many :friends, through: :sightings
  belongs_to :user
  # accepts_nested_attributes_for :clothing_articles, reject_if: lambda {|attributes| attributes["description"].blank?}

  def last_worn_on
    d = self.date
    # binding.pry
    # ord = ordinalize(d.strftime("%d"))
    d.strftime("%A %B %d, %Y")
  end

end