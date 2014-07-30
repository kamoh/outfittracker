class ClothingArticle < ActiveRecord::Base
  belongs_to :clothing_category
  has_many :clothing_article_outfits
  has_many :outfits, through: :clothing_article_outfits

  # Paperclip
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
