class CreateClothingArticles < ActiveRecord::Migration
  def change
    create_table :clothing_articles do |t|
      t.string :description
      t.string :color
      t.references :clothing_category, index: true

      t.timestamps
    end
  end
end
