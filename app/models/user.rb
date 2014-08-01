class User < ActiveRecord::Base
  has_many :outfits
  has_many :clothing_articles

  def top_ten_cas
    top = clothing_articles.sort_by(&:times_worn).reverse
    top[0..9]
  end

  def top_outfits
    all_outfits = outfits.collect do |outfit|
      outfit.clothing_articles.sort  
    end

    unique_outfit = all_outfits.collect { |out| { :outfit => out, :count => all_outfits.count(out) }}.uniq { |o| o[:outfit] }.sort_by { |h| h[:count] }.reverse
  end

  def weather_url
    "http://api.wunderground.com/api/#{ENV['WU_API_KEY']}/conditions/q/#{state.upcase}/#{city.split(' ').map(&:capitalize).join('_')}.json"
  end
end

