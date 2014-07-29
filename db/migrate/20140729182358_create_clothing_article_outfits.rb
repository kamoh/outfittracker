class CreateClothingArticleOutfits < ActiveRecord::Migration
  def change
    create_table :clothing_article_outfits do |t|
      t.references :clothing_article, index: true
      t.references :outfit, index: true

      t.timestamps
    end
  end
end
