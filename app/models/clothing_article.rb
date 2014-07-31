class ClothingArticle < ActiveRecord::Base
  belongs_to :clothing_category
  belongs_to :user
  has_many :clothing_article_outfits
  has_many :outfits, through: :clothing_article_outfits

  # Paperclip
  has_attached_file :photo, :styles => { :medium => "300x300>" }, 
                    :default_url => "/images/:style/missing.png",
                    # :default_url => ":rails_root/public/simon_point.jpg",
                    :url => "/assets/clothing_articles/:id/:basename.:extension",
                    :path => ":rails_root/public/assets/clothing_articles/:id/:basename.:extension"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def last_worn_on
    d = outfits.sort_by(&:date).pop.date
    # binding.pry
    # ord = ordinalize(d.strftime("%d"))
    d.strftime("%A %B %d, %Y")
  end
end
