class Sighting < ActiveRecord::Base
  belongs_to :outfit
  belongs_to :friend

  def outfit_description
    outfit.clothing_articles.map(&:description).to_sentence
  end
end
