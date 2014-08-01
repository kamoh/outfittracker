puts "Seeding data..."

puts "Creating categories..."

@hoodies = ClothingCategory.create(category: "Hoodies")
@button_down_shirts = ClothingCategory.create(category: "Button Down Shirts")
@polo_shirts = ClothingCategory.create(category: "Polo Shirts")
@t_shirts = ClothingCategory.create(category: "T-Shirts")
@dresses = ClothingCategory.create(category: "Dresses")
@blouses = ClothingCategory.create(category: "Blouses")
@pants = ClothingCategory.create(category: "Pants")
@jeans = ClothingCategory.create(category: "Jeans")
@shorts = ClothingCategory.create(category: "Shorts")
@skirts = ClothingCategory.create(category: "Skirts")
@suits = ClothingCategory.create(category: "Suits")
@shoes = ClothingCategory.create(category: "Shoes")
@sneakers = ClothingCategory.create(category: "Sneakers")
@high_heels = ClothingCategory.create(category: "High Heels")

puts "Creating users..."

@ap = User.new(name: "Ana", city: "San Francisco", state: "CA", email: "perez.analuisa@gmail.com")
@bs = User.new(name: "Ben", city: "Bozeman", state: "MT", email: "ben.serviss@gmail.com")
@cc = User.new(name: "Chris", city: "New York", state: "NY", email: "callahan.c@gmail.com")

puts "Creating friends..."

@ana = Friend.create(name: "Ana")
@ben = Friend.create(name: "Ben")
@chris = Friend.create(name: "Chris")
@logan = Friend.create(name: "Logan")
@avi = Friend.create(name: "Avi")
@bianca = Friend.create(name: "Bianca")
@michael = Friend.create(name: "Michael")
@jon = Friend.create(name: "Jon")
@tristan = Friend.create(name: "Tristan")
@denine = Friend.create(name: "Denine")
@matz = Friend.create(name: "Matz")
@adam = Friend.create(name: "Adam")

puts "Creating clothing articles..."

@photo_test = File.open(File.join(Rails.root, '/public/simon_point.jpg'))

@flatiron_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/flatiron_shirt.jpg'))
@flatiron_hoodie_pic = File.open(File.join(Rails.root, '/public/test/flatiron_hoodie.jpg'))
@brown_polo_pic = File.open(File.join(Rails.root, '/public/test/brown_polo.jpg'))
@levi_jeans1_pic = File.open(File.join(Rails.root, '/public/test/levi_jeans_1.jpg'))
@levi_jeans2_pic = File.open(File.join(Rails.root, '/public/test/levi_jeans_2.jpg'))
@levi_jeans3_pic = File.open(File.join(Rails.root, '/public/test/levi_jeans_3'))
@blue_button_down_pic = File.open(File.join(Rails.root, '/public/test/blue_button_down.jpg'))
@linen_pants_pic = File.open(File.join(Rails.root, '/public/test/linen_pants.jpg'))
@blue_shorts_pic = File.open(File.join(Rails.root, '/public/test/blue_shorts.jpg'))
@green_polo_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@tan_button_down_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@orange_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@green_dress_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@black_dress_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@white_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@red_v_neck_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@khaki_shorts_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@dress_shoes_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@green_nikes_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@black_shoes_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@adidas_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@internet_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@black_high_heels_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@red_high_heels_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@gym_shorts_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))
@suit_pic = File.open(File.join(Rails.root, '/public/test/FILENAME'))

@flatiron_t_shirt = ClothingArticle.create(description: "Flatiron School Shirt", color: "Dark Gray", clothing_category_id: @t_shirts.id, photo: @flatiron_t_shirt_pic, user: @ap)
@flatiron_hoodie = ClothingArticle.create(description: "Flatiron School Hoodie", color: "Dark Gray", clothing_category_id: @hoodies.id, photo: @flatiron_hoodie_pic, user: @ap)
@brown_polo = ClothingArticle.create(description: "Brown Polo Shirt", color: "Brown", clothing_category_id: @polo_shirts.id, photo: @brown_polo_pic, user: @ap)
@levi_jeans1 = ClothingArticle.create(description: "Navy Levi Jeans", color: "Navy Blue", clothing_category_id: @jeans.id, photo: @levi_jeans1_pic, user: @ap)
@levi_jeans2 = ClothingArticle.create(description: "Light Blue Levi Jeans", color: "Light Blue", clothing_category_id: @jeans.id, photo: @levi_jeans2_pic, user: @ap)
@levi_jeans3 = ClothingArticle.create(description: "Black Levi Jeans", color: "Black", clothing_category_id: @jeans.id, photo: @levi_jeans3_pic, user: @ap)
@blue_button_down = ClothingArticle.create(description: "Blue Button Down Shirt", color: "Light Blue", clothing_category_id: @button_down_shirts.id, photo: @blue_button_down_pic, user: @ap)
@linen_pants = ClothingArticle.create(description: "Gray Pants", color: "Light Gray", clothing_category_id: @pants.id, photo: @linen_pants_pic, user: @ap)
@blue_shorts = ClothingArticle.create(description: "Blue Shorts", color: "Blue", clothing_category_id: @shorts.id, photo: @blue_shorts_pic, user: @ap)
@green_polo = ClothingArticle.create(description: "Green Polo Shirt", color: "Green", clothing_category_id: @polo_shirts.id, photo: @green_polo_pic, user: @ap)
@tan_button_down = ClothingArticle.create(description: "Tan Short Sleeve Button Down", color: "Tan", clothing_category_id: @button_down_shirts.id, photo: @tan_button_down_pic, user: @ap)
@orange_t_shirt = ClothingArticle.create(description: "Orange T-Shirt", color: "Orange", clothing_category_id: @t_shirts.id, photo: @orange_t_shirt_pic, user: @ap)
@green_dress = ClothingArticle.create(description: "Green Dress", color: "Green", clothing_category_id: @dresses.id, photo: @green_dress_pic, user: @ap)
@black_dress = ClothingArticle.create(description: "Black Dress", color: "Black", clothing_category_id: @dresses.id, photo: @black_dress_pic, user: @ap)
@white_t_shirt = ClothingArticle.create(description: "White T-Shirt", color: "White", clothing_category_id: @t_shirts.id, photo: @white_t_shirt_pic, user: @ap)
@red_v_neck = ClothingArticle.create(description: "Red V Neck", color: "Red", clothing_category_id: @t_shirts.id, photo: @red_v_neck_pic, user: @ap)
@khaki_shorts = ClothingArticle.create(description: "Khaki Shorts", color: "Tan", clothing_category_id: @shorts.id, photo: @khaki_shorts_pic, user: @ap)
@dress_shoes = ClothingArticle.create(description: "Dress Shoes", color: "Black", clothing_category_id: @shoes.id, photo: @dress_shoes_pic, user: @ap)
@green_nikes = ClothingArticle.create(description: "Green Nikes", color: "Green", clothing_category_id: @sneakers.id, photo: @green_nikes_pic, user: @ap)
@black_shoes = ClothingArticle.create(description: "Black Sneakers", color: "Black", clothing_category_id: @sneakers.id, photo: @black_shoes_pic, user: @ap)
@adidas = ClothingArticle.create(description: "Adidas", color: "Black and White", clothing_category_id: @sneakers.id, photo: @adidas_pic, user: @ap)
@internet_t_shirt = ClothingArticle.create(description: "Internet T-Shirt", color: "Gray", clothing_category_id: @t_shirts.id, photo: @internet_t_shirt_pic, user: @ap)
@black_high_heels = ClothingArticle.create(description: "Black High Heels", color: "Black", clothing_category_id: @high_heels.id, photo: @black_high_heels_pic, user: @ap)
@red_high_heels = ClothingArticle.create(description: "Red High Heels", color: "Red", clothing_category_id: @high_heels.id, photo: @red_high_heels_pic, user: @ap)
@gym_shorts = ClothingArticle.create(description: "Gym Shorts", color: "Black", clothing_category_id: @shorts.id, photo: @gym_shorts_pic, user: @ap)
@suit = ClothingArticle.create(description: "Suit", color: "Navy Blue", clothing_category_id: @suits.id, photo: @suit_pic, user: @ap)

@flatiron_t_shirt1 = ClothingArticle.create(description: "Flatiron School Shirt", color: "Dark Gray", clothing_category_id: @t_shirts.id, photo: @flatiron_t_shirt_pic, user: @bs)
@flatiron_hoodie1 = ClothingArticle.create(description: "Flatiron School Hoodie", color: "Dark Gray", clothing_category_id: @hoodies.id, photo: @flatiron_hoodie_pic, user: @bs)
@brown_polo1 = ClothingArticle.create(description: "Brown Polo Shirt", color: "Brown", clothing_category_id: @polo_shirts.id, photo: @brown_polo_pic, user: @bs)
@levi_jeans11 = ClothingArticle.create(description: "Navy Levi Jeans", color: "Navy Blue", clothing_category_id: @jeans.id, photo: @levi_jeans1_pic, user: @bs)
@levi_jeans21 = ClothingArticle.create(description: "Light Blue Levi Jeans", color: "Light Blue", clothing_category_id: @jeans.id, photo: @levi_jeans2_pic, user: @bs)
@levi_jeans31 = ClothingArticle.create(description: "Black Levi Jeans", color: "Black", clothing_category_id: @jeans.id, photo: @levi_jeans3_pic, user: @bs)
@blue_button_down1 = ClothingArticle.create(description: "Blue Button Down Shirt", color: "Light Blue", clothing_category_id: @button_down_shirts.id, photo: @blue_button_down_pic, user: @bs)
@linen_pants1 = ClothingArticle.create(description: "Gray Pants", color: "Light Gray", clothing_category_id: @pants.id, photo: @linen_pants_pic, user: @bs)
@blue_shorts1 = ClothingArticle.create(description: "Blue Shorts", color: "Blue", clothing_category_id: @shorts.id, photo: @blue_shorts_pic, user: @bs)
@green_polo1 = ClothingArticle.create(description: "Green Polo Shirt", color: "Green", clothing_category_id: @polo_shirts.id, photo: @green_polo_pic, user: @bs)
@tan_button_down1 = ClothingArticle.create(description: "Tan Short Sleeve Button Down", color: "Tan", clothing_category_id: @button_down_shirts.id, photo: @tan_button_down_pic, user: @bs)
@orange_t_shirt1 = ClothingArticle.create(description: "Orange T-Shirt", color: "Orange", clothing_category_id: @t_shirts.id, photo: @orange_t_shirt_pic, user: @bs)
@green_dress1 = ClothingArticle.create(description: "Green Dress", color: "Green", clothing_category_id: @dresses.id, photo: @green_dress_pic, user: @bs)
@black_dress1 = ClothingArticle.create(description: "Black Dress", color: "Black", clothing_category_id: @dresses.id, photo: @black_dress_pic, user: @bs)
@white_t_shirt1 = ClothingArticle.create(description: "White T-Shirt", color: "White", clothing_category_id: @t_shirts.id, photo: @white_t_shirt_pic, user: @bs)
@red_v_neck1 = ClothingArticle.create(description: "Red V Neck", color: "Red", clothing_category_id: @t_shirts.id, photo: @red_v_neck_pic, user: @bs)
@khaki_shorts1 = ClothingArticle.create(description: "Khaki Shorts", color: "Tan", clothing_category_id: @shorts.id, photo: @khaki_shorts_pic, user: @bs)
@dress_shoes1 = ClothingArticle.create(description: "Dress Shoes", color: "Black", clothing_category_id: @shoes.id, photo: @dress_shoes_pic, user: @bs)
@green_nikes1 = ClothingArticle.create(description: "Green Nikes", color: "Green", clothing_category_id: @sneakers.id, photo: @green_nikes_pic, user: @bs)
@black_shoes1 = ClothingArticle.create(description: "Black Sneakers", color: "Black", clothing_category_id: @sneakers.id, photo: @black_shoes_pic, user: @bs)
@adidas1 = ClothingArticle.create(description: "Adidas", color: "Black and White", clothing_category_id: @sneakers.id, photo: @adidas_pic, user: @bs)
@internet_t_shirt1 = ClothingArticle.create(description: "Internet T-Shirt", color: "Gray", clothing_category_id: @t_shirts.id, photo: @internet_t_shirt_pic, user: @bs)
@black_high_heels1 = ClothingArticle.create(description: "Black High Heels", color: "Black", clothing_category_id: @high_heels.id, photo: @black_high_heels_pic, user: @bs)
@red_high_heels1 = ClothingArticle.create(description: "Red High Heels", color: "Red", clothing_category_id: @high_heels.id, photo: @red_high_heels_pic, user: @bs)
@gym_shorts1 = ClothingArticle.create(description: "Gym Shorts", color: "Black", clothing_category_id: @shorts.id, photo: @gym_shorts_pic, user: @bs)
@suit1 = ClothingArticle.create(description: "Suit", color: "Navy Blue", clothing_category_id: @suits.id, photo: @suit_pic, user: @bs)

@flatiron_t_shirt2 = ClothingArticle.create(description: "Flatiron School Shirt", color: "Dark Gray", clothing_category_id: @t_shirts.id, photo: @flatiron_t_shirt_pic, user: @cc)
@flatiron_hoodie2 = ClothingArticle.create(description: "Flatiron School Hoodie", color: "Dark Gray", clothing_category_id: @hoodies.id, photo: @flatiron_hoodie_pic, user: @cc)
@brown_polo2 = ClothingArticle.create(description: "Brown Polo Shirt", color: "Brown", clothing_category_id: @polo_shirts.id, photo: @brown_polo_pic, user: @cc)
@levi_jeans12 = ClothingArticle.create(description: "Navy Levi Jeans", color: "Navy Blue", clothing_category_id: @jeans.id, photo: @levi_jeans1_pic, user: @cc)
@levi_jeans22 = ClothingArticle.create(description: "Light Blue Levi Jeans", color: "Light Blue", clothing_category_id: @jeans.id, photo: @levi_jeans2_pic, user: @cc)
@levi_jeans32 = ClothingArticle.create(description: "Black Levi Jeans", color: "Black", clothing_category_id: @jeans.id, photo: @levi_jeans3_pic, user: @cc)
@blue_button_down2 = ClothingArticle.create(description: "Blue Button Down Shirt", color: "Light Blue", clothing_category_id: @button_down_shirts.id, photo: @blue_button_down_pic, user: @cc)
@linen_pants2 = ClothingArticle.create(description: "Gray Pants", color: "Light Gray", clothing_category_id: @pants.id, photo: @linen_pants_pic, user: @cc)
@blue_shorts2 = ClothingArticle.create(description: "Blue Shorts", color: "Blue", clothing_category_id: @shorts.id, photo: @blue_shorts_pic, user: @cc)
@green_polo2 = ClothingArticle.create(description: "Green Polo Shirt", color: "Green", clothing_category_id: @polo_shirts.id, photo: @green_polo_pic, user: @cc)
@tan_button_down2 = ClothingArticle.create(description: "Tan Short Sleeve Button Down", color: "Tan", clothing_category_id: @button_down_shirts.id, photo: @tan_button_down_pic, user: @cc)
@orange_t_shirt2 = ClothingArticle.create(description: "Orange T-Shirt", color: "Orange", clothing_category_id: @t_shirts.id, photo: @orange_t_shirt_pic, user: @cc)
@green_dress2 = ClothingArticle.create(description: "Green Dress", color: "Green", clothing_category_id: @dresses.id, photo: @green_dress_pic, user: @cc)
@black_dress2 = ClothingArticle.create(description: "Black Dress", color: "Black", clothing_category_id: @dresses.id, photo: @black_dress_pic, user: @cc)
@white_t_shirt2 = ClothingArticle.create(description: "White T-Shirt", color: "White", clothing_category_id: @t_shirts.id, photo: @white_t_shirt_pic, user: @cc)
@red_v_neck2 = ClothingArticle.create(description: "Red V Neck", color: "Red", clothing_category_id: @t_shirts.id, photo: @red_v_neck_pic, user: @cc)
@khaki_shorts2 = ClothingArticle.create(description: "Khaki Shorts", color: "Tan", clothing_category_id: @shorts.id, photo: @khaki_shorts_pic, user: @cc)
@dress_shoes2 = ClothingArticle.create(description: "Dress Shoes", color: "Black", clothing_category_id: @shoes.id, photo: @dress_shoes_pic, user: @cc)
@green_nikes2 = ClothingArticle.create(description: "Green Nikes", color: "Green", clothing_category_id: @sneakers.id, photo: @green_nikes_pic, user: @cc)
@black_shoes2 = ClothingArticle.create(description: "Black Sneakers", color: "Black", clothing_category_id: @sneakers.id, photo: @black_shoes_pic, user: @cc)
@adidas2 = ClothingArticle.create(description: "Adidas", color: "Black and White", clothing_category_id: @sneakers.id, photo: @adidas_pic, user: @cc)
@internet_t_shirt2 = ClothingArticle.create(description: "Internet T-Shirt", color: "Gray", clothing_category_id: @t_shirts.id, photo: @internet_t_shirt_pic, user: @cc)
@black_high_heels2 = ClothingArticle.create(description: "Black High Heels", color: "Black", clothing_category_id: @high_heels.id, photo: @black_high_heels_pic, user: @cc)
@red_high_heels2 = ClothingArticle.create(description: "Red High Heels", color: "Red", clothing_category_id: @high_heels.id, photo: @red_high_heels_pic, user: @cc)
@gym_shorts2 = ClothingArticle.create(description: "Gym Shorts", color: "Black", clothing_category_id: @shorts.id, photo: @gym_shorts_pic, user: @cc)2
@suit2 = ClothingArticle.create(description: "Suit", color: "Navy Blue", clothing_category_id: @suits.id, photo: @suit_pic, user: @cc)

puts "Creating outfits..."

@outfit1 = Outfit.create(date: "2014-07-11")
@outfit2 = Outfit.create(date: "2014-07-12")
@outfit3 = Outfit.create(date: "2014-07-13")
@outfit4 = Outfit.create(date: "2014-07-14")
@outfit5 = Outfit.create(date: "2014-07-15")
@outfit6 = Outfit.create(date: "2014-07-16")
@outfit7 = Outfit.create(date: "2014-07-17")
@outfit8 = Outfit.create(date: "2014-07-18")
@outfit9 = Outfit.create(date: "2014-07-19")
@outfit10 = Outfit.create(date: "2014-07-20")
@outfit11 = Outfit.create(date: "2014-07-21")
@outfit12 = Outfit.create(date: "2014-07-22")
@outfit13 = Outfit.create(date: "2014-07-23")
@outfit14 = Outfit.create(date: "2014-07-24")
@outfit15 = Outfit.create(date: "2014-07-25")
@outfit16 = Outfit.create(date: "2014-07-26")
@outfit17 = Outfit.create(date: "2014-07-27")
@outfit18 = Outfit.create(date: "2014-07-28")
@outfit19 = Outfit.create(date: "2014-07-29")
@outfit20 = Outfit.create(date: "2014-07-30")

puts "Assigning clothing articles to outfits..."

@outfit1.clothing_articles = [@flatiron_t_shirt, @flatiron_hoodie, @levi_jeans1, @green_nikes]
@outfit2.clothing_articles = [@levi_jeans1, @brown_polo, @green_nikes]
@outfit3.clothing_articles = [@levi_jeans1, @blue_button_down, @green_nikes]
@outfit4.clothing_articles = [@levi_jeans1, @red_v_neck, @green_nikes]
@outfit5.clothing_articles = [@levi_jeans2, @green_polo, @green_nikes]
@outfit6.clothing_articles = [@flatiron_t_shirt, @levi_jeans1, @green_nikes]
@outfit7.clothing_articles = [@levi_jeans2, @internet_t_shirt, @green_nikes]
@outfit8.clothing_articles = [@levi_jeans21, @internet_t_shirt1, @black_shoes1]
@outfit9.clothing_articles = [@linen_pants1, @blue_button_down1, @black_shoes1]
@outfit10.clothing_articles = [@levi_jeans11, @white_t_shirt1, @black_shoes1]
@outfit11.clothing_articles = [@linen_pants1, @green_polo1, @black_shoes1]
@outfit12.clothing_articles = [@gym_shorts1, @brown_polo1, @black_shoes1]
@outfit13.clothing_articles = [@levi_jeans11, @orange_t_shirt1, @flatiron_hoodie1, @adidas1]
@outfit14.clothing_articles = [@levi_jeans31, @green_polo1, @adidas1]
@outfit15.clothing_articles = [@levi_jeans32, @red_v_neck2, @adidas2]
@outfit16.clothing_articles = [@khaki_shorts2, @flatiron_t_shirt2, @adidas2]
@outfit17.clothing_articles = [@linen_pants2, @red_v_neck2, @adidas2]
@outfit18.clothing_articles = [@linen_pants2, @blue_button_down2]
@outfit19.clothing_articles = [@blue_shorts2, @flatiron_t_shirt2]
@outfit20.clothing_articles = [@gym_shorts2, @brown_polo2]

puts "Assigning friends to outfits..."

@outfit1.friends = [@ana, @logan, @jon, @denine]
@outfit2.friends = [@ben, @avi]
@outfit3.friends = [@ben, @bianca, @denine]
@outfit4.friends = [@chris, @avi, @logan, @denine]
@outfit5.friends = [@ana, @chris, @denine]
@outfit6.friends = [@logan, @michael, @adam]
@outfit7.friends = [@ben, @bianca]
@outfit8.friends = [@logan, @tristan]
@outfit9.friends = [@ana, @avi, @matz, @adam, @ben, @chris]
@outfit10.friends = [@logan, @denine]
@outfit11.friends = [@ben, @michael]
@outfit12.friends = [@ben, @jon, @adam]
@outfit13.friends = [@ben, @logan, @tristan]
@outfit14.friends = [@avi, @bianca, @denine]
@outfit15.friends = [@chris, @michael, @matz, @jon]
@outfit16.friends = [@ben, @matz, @jon]
@outfit17.friends = [@chris, @denine]
@outfit18.friends = [@chris, @jon]
@outfit19.friends = [@ana, @tristan]
@outfit20.friends = [@ben, @chris, @avi]

puts "Saving..."

@outfit1.save
@outfit2.save
@outfit3.save
@outfit4.save
@outfit5.save
@outfit6.save
@outfit7.save
@outfit8.save
@outfit9.save
@outfit10.save
@outfit11.save
@outfit12.save
@outfit13.save
@outfit14.save
@outfit15.save
@outfit16.save
@outfit17.save
@outfit18.save
@outfit19.save
@outfit20.save

puts "Assigning outfits..."

@ap.outfits = [@outfit1, @outfit2, @outfit3, @outfit4, @outfit5, @outfit6, @outfit7]
@bs.outfits = [@outfit8, @outfit9, @outfit10, @outfit11, @outfit12, @outfit13, @outfit14]
@cc.outfits = [@outfit15, @outfit16, @outfit17, @outfit18, @outfit19, @outfit20]

@ap.save
@bs.save
@cc.save

puts "Seeding complete!"

