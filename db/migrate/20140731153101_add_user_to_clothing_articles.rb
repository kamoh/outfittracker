class AddUserToClothingArticles < ActiveRecord::Migration
  def change
    add_reference :clothing_articles, :user, index: true
  end
end
