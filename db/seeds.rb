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
@sandals = ClothingCategory.create(category: "Sandals")

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

@flatiron_t_shirt = ClothingArticle.create(description: "Flatiron School Shirt", color: "Dark Gray", clothing_category_id: @t_shirts.id)
@flatiron_hoodie = ClothingArticle.create(description: "Flatiron School Hoodie", color: "Dark Gray", clothing_category_id: @hoodies.id)
@brown_polo = ClothingArticle.create(description: "Brown Polo Shirt", color: "Brown", clothing_category_id: @polo_shirts.id)
@levi_jeans1 = ClothingArticle.create(description: "Navy Levi Jeans", color: "Navy Blue", clothing_category_id: @jeans.id)
@levi_jeans2 = ClothingArticle.create(description: "Light Blue Levi Jeans", color: "Light Blue", clothing_category_id: @jeans.id)
@levi_jeans3 = ClothingArticle.create(description: "Black Levi Jeans", color: "Black", clothing_category_id: @jeans.id)
@blue_button_down = ClothingArticle.create(description: "Blue Button Down Shirt", color: "Light Blue", clothing_category_id: @button_down_shirts.id)
@linen_pants = ClothingArticle.create(description: "Gray Pants", color: "Light Gray", clothing_category_id: @pants.id)
@blue_shorts = ClothingArticle.create(description: "Blue Shorts", color: "Blue", clothing_category_id: @shorts.id)
@green_polo = ClothingArticle.create(description: "Green Polo Shirt", color: "Green", clothing_category_id: @polo_shirts.id)
@tan_button_down = ClothingArticle.create(description: "Tan Short Sleeve Button Down", color: "Tan", clothing_category_id: @button_down_shirts.id)
@orange_t_shirt = ClothingArticle.create(description: "Orange T-Shirt", color: "Orange", clothing_category_id: @t_shirts.id)
@green_dress = ClothingArticle.create(description: "Green Dress", color: "Green", clothing_category_id: @dresses.id)
@black_dress = ClothingArticle.create(description: "Black Dress", color: "Black", clothing_category_id: @dresses.id)
@white_t_shirt = ClothingArticle.create(description: "White T-Shirt", color: "White", clothing_category_id: @t_shirts.id)
@red_v_neck = ClothingArticle.create(description: "Red V Neck", color: "Red", clothing_category_id: @t_shirts.id)
@khaki_shorts = ClothingArticle.create(description: "Khaki Shorts", color: "Tan", clothing_category_id: @shorts.id)
@dress_shoes = ClothingArticle.create(description: "Dress Shoes", color: "Black", clothing_category_id: @shoes.id)
@green_nikes = ClothingArticle.create(description: "Green Nikes", color: "Green", clothing_category_id: @sneakers.id)
@black_shoes = ClothingArticle.create(description: "Black Sneakers", color: "Black", clothing_category_id: @sneakers.id)
@sandals = ClothingArticle.create(description: "Sandals", color: "Brown", clothing_category_id: @sandals.id)
@adidas = ClothingArticle.create(description: "Adidas", color: "Black and White", clothing_category_id: @sneakers.id)
@internet_t_shirt = ClothingArticle.create(description: "Internet T-Shirt", color: "Gray", clothing_category_id: @t_shirts.id)
@black_high_heels = ClothingArticle.create(description: "Black High Heels", color: "Black", clothing_category_id: @high_heels.id)
@red_high_heels = ClothingArticle.create(description: "Red High Heels", color: "Red", clothing_category_id: @high_heels.id)
@gym_shorts = ClothingArticle.create(description: "Gym Shorts", color: "Black", clothing_category_id: @shorts.id)
@suit = ClothingArticle.create(description: "Suit", color: "Navy Blue", clothing_category_id: @suits.id)



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

@outfit1.clothing_articles = [@flatiron_t_shirt, @flatiron_hoodie, @levi_jeans1, @green_nikes]
@outfit2.clothing_articles = [@levi_jeans1, @brown_polo, @green_nikes]
@outfit3.clothing_articles = [@levi_jeans1, @blue_button_down, @green_nikes]
@outfit4.clothing_articles = [@levi_jeans1, @red_v_neck, @green_nikes]
@outfit5.clothing_articles = [@levi_jeans2, @green_polo, @green_nikes]
@outfit6.clothing_articles = [@flatiron_t_shirt, @levi_jeans1, @green_nikes]
@outfit7.clothing_articles = [@levi_jeans2, @internet_t_shirt, @green_nikes]
@outfit8.clothing_articles = [@levi_jeans2, @internet_t_shirt, @black_shoes]
@outfit9.clothing_articles = [@linen_pants, @blue_button_down, @black_shoes]
@outfit10.clothing_articles = [@levi_jeans1, @white_t_shirt, @black_shoes]
@outfit11.clothing_articles = [@linen_pants, @green_polo, @black_shoes]
@outfit12.clothing_articles = [@gym_shorts, @brown_polo, @black_shoes]
@outfit13.clothing_articles = [@levi_jeans1, @orange_t_shirt, @flatiron_hoodie, @adidas]
@outfit14.clothing_articles = [@levi_jeans3, @green_polo, @adidas]
@outfit15.clothing_articles = [@levi_jeans3, @red_v_neck. @adidas]
@outfit16.clothing_articles = [@khaki_shorts, @flatiron_t_shirt, @adidas]
@outfit17.clothing_articles = [@linen_pants, @red_v_neck, @adidas]
@outfit18.clothing_articles = [@linen_pants, @blue_button_down, @sandals]
@outfit19.clothing_articles = [@blue_shorts, @flatiron_t_shirt, @sandals]
@outfit20.clothing_articles = [@gym_shorts, @brown_polo, @sandals]

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
