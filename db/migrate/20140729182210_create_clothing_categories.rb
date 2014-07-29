class CreateClothingCategories < ActiveRecord::Migration
  def change
    create_table :clothing_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
