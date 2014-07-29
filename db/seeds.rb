# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ClothingArticles

tops_cat = ClothingCategory.create(
  category: "tops"
  )

bottoms_cat = ClothingCategory.create(
  category: "bottoms"
  )
tshirt = ClothingArticle.create(
  description: "t-shirt", 
  color: "blue",
  clothing_category_id: tops_cat.id
  )
vest = ClothingArticle.create(
  description: "vest", 
  color: "gray",
  clothing_category_id: tops_cat.id
  )
pants = ClothingArticle.create(
  description: "pants", 
  color: "brown",
  clothing_category_id: bottoms_cat.id
  )
shorts = ClothingArticle.create(
  description: "shorts", 
  color: "green",
  clothing_category_id: bottoms_cat.id
  )

casual_outfit = Outfit.create(
  date: "2013-10-24"
  )

business_outfit = Outfit.create(
  date: "2002-02-04"
  )

casual_outfit.clothing_articles = [tshirt, shorts]
casual_outfit.save
business_outfit.clothing_articles = [vest, pants]
business_outfit.save
