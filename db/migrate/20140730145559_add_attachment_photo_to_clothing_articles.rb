class AddAttachmentPhotoToClothingArticles < ActiveRecord::Migration
  def self.up
    change_table :clothing_articles do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :clothing_articles, :photo
  end
end
