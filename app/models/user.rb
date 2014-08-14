class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :outfits
  has_many :clothing_articles
  has_many :friends, through: :outfits
  has_one :recommendation

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

  def gravatar_id
    if !email.nil?
      # binding.pry
      gravatar_id = Digest::MD5::hexdigest(email.downcase)
    else
      gravatar_id = Digest::MD5::hexdigest("user@example.com")
    end
  end

  def gravatar_url
    "https://secure.gravatar.com/avatar/#{gravatar_id}"
  end

  def top_five_colors
    clothing_articles.group(:color).count.sort_by {|k, v| v}.reverse[0..4]
  end

  def random_recommendation
    [random_top, random_bottom, random_footwear]
  end

  def random_top
    suggestions = ["Cowboy Hat", "Turtleneck", "Gold Chain", "Vest", "Sweater"]
    top = ["Hoodies", "Button Down Shirts", "Polo Shirts", "T-Shirts", "Blouses"].sample
    catt = ClothingCategory.find_by(category: top)
    clothes = clothing_articles.where(clothing_category_id: catt.id).sample
    clothes ? clothes.description : suggestions.sample
  end

  def random_bottom
    suggestions = ["Corduroys", "Slacks"]
    bottom = ["Pants", "Jeans", "Shorts", "Skirts"].sample
    catt = ClothingCategory.find_by(category: bottom)
    clothes = clothing_articles.where(clothing_category_id: catt.id).sample
    clothes ? clothes.description : suggestions.sample
  end

  def random_footwear
    suggestions = ["Toms","Boots","Birkenstocks","Vibram Five Fingers", "Havaianas"]
    footwear = ["High Heels", "Shoes", "Sneakers", "Sandals"].sample
    catt = ClothingCategory.find_by(category: footwear)
    clothes = clothing_articles.where(clothing_category_id: catt.id).sample
    clothes ? clothes.description : suggestions.sample
  end

end
