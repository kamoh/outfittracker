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
@sandals = ClothingCategory.create(category: "Sandals")

puts "Creating users..."

@ap = User.new(name: "Ana", city: "San Francisco", state: "CA", email: "perez.analuisa@gmail.com", password: "flatiron")
@bs = User.new(name: "Ben", city: "Bozeman", state: "MT", email: "ben.serviss@gmail.com", password: "flatiron")
@cc = User.new(name: "Chris", city: "New York", state: "NY", email: "callahan.c@gmail.com", password: "flatiron")

puts "Creating friends..."

@ben = @ap.friends.build(name: "Ben")
@chris = @ap.friends.build(name: "Chris")
@logan = @ap.friends.build(name: "Logan")
@avi = @ap.friends.build(name: "Avi")
@bianca = @ap.friends.build(name: "Bianca")
@michael = @ap.friends.build(name: "Michael")
@jon = @ap.friends.build(name: "Jon")
@tristan = @ap.friends.build(name: "Tristan")
@denine = @ap.friends.build(name: "Denine")
@matz = @ap.friends.build(name: "Matz")
@adam = @ap.friends.build(name: "Adam")

@ana1 = @bs.friends.build(name: "Ana")
@chris1 = @bs.friends.build(name: "Chris")
@logan1 = @bs.friends.build(name: "Logan")
@avi1 = @bs.friends.build(name: "Avi")
@bianca1 = @bs.friends.build(name: "Bianca")
@michael1 = @bs.friends.build(name: "Michael")
@jon1 = @bs.friends.build(name: "Jon")
@tristan1 = @bs.friends.build(name: "Tristan")
@denine1 = @bs.friends.build(name: "Denine")
@matz1 = @bs.friends.build(name: "Matz")
@adam1 = @bs.friends.build(name: "Adam")

@ana2 = @cc.friends.build(name: "Ana")
@ben2 = @cc.friends.build(name: "Ben")
@logan2 = @cc.friends.build(name: "Logan")
@avi2 = @cc.friends.build(name: "Avi")
@bianca2 = @cc.friends.build(name: "Bianca")
@michael2 = @cc.friends.build(name: "Michael")
@jon2 = @cc.friends.build(name: "Jon")
@tristan2 = @cc.friends.build(name: "Tristan")
@denine2 = @cc.friends.build(name: "Denine")
@matz2 = @cc.friends.build(name: "Matz")
@adam2 = @cc.friends.build(name: "Adam")

puts "Creating clothing articles..."

@photo_test = File.open(File.join(Rails.root, '/public/simon_point.jpg'))

@flatiron_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/flatiron_shirt.jpg'))
@flatiron_hoodie_pic = File.open(File.join(Rails.root, '/public/test/flatiron_hoodie.jpg'))
@brown_polo_pic = File.open(File.join(Rails.root, '/public/test/brown_polo.jpg'))
@levi_jeans1_pic = File.open(File.join(Rails.root, '/public/test/levi_jeans_1.jpg'))
@levi_jeans2_pic = File.open(File.join(Rails.root, '/public/test/levi_jeans_2.jpg'))
@levi_jeans3_pic = File.open(File.join(Rails.root, '/public/test/levi_jeans_3.jpg'))
@blue_button_down_pic = File.open(File.join(Rails.root, '/public/test/blue_button_down.jpg'))
@linen_pants_pic = File.open(File.join(Rails.root, '/public/test/linen_pants.jpg'))
@blue_shorts_pic = File.open(File.join(Rails.root, '/public/test/blue_shorts.jpg'))
@green_polo_pic = File.open(File.join(Rails.root, '/public/test/green_polo.jpg'))
@tan_button_down_pic = File.open(File.join(Rails.root, '/public/test/tan_button_down.jpg'))
@orange_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/orange_t_shirt.jpg'))
@green_dress_pic = File.open(File.join(Rails.root, '/public/test/green_dress.png'))
@black_dress_pic = File.open(File.join(Rails.root, '/public/test/black_dress.jpg'))
@white_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/white_t_shirt.jpg'))
@red_v_neck_pic = File.open(File.join(Rails.root, '/public/test/red_v_neck.jpg'))
@khaki_shorts_pic = File.open(File.join(Rails.root, '/public/test/khaki_shorts.jpg'))
@dress_shoes_pic = File.open(File.join(Rails.root, '/public/test/dress_shoes.jpg'))
@green_nikes_pic = File.open(File.join(Rails.root, '/public/test/green-nikes.jpg'))
@black_shoes_pic = File.open(File.join(Rails.root, '/public/test/black-sneakers.jpg'))
@adidas_pic = File.open(File.join(Rails.root, '/public/test/adidas.jpg'))
@internet_t_shirt_pic = File.open(File.join(Rails.root, '/public/test/internet-t-shirt.jpg'))
@black_high_heels_pic = File.open(File.join(Rails.root, '/public/test/black-high-heels.jpg'))
@red_high_heels_pic = File.open(File.join(Rails.root, '/public/test/red-high-heels.jpg'))
@gym_shorts_pic = File.open(File.join(Rails.root, '/public/test/gym-shorts.jpg'))
@suit_pic = File.open(File.join(Rails.root, '/public/test/navy-blue-suit.jpg'))
@sandals_pic = File.open(File.join(Rails.root, '/public/test/sandals.jpg'))

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
@rainbow_sandals = ClothingArticle.create(description: "Rainbow Sandals", color: "Brown", clothing_category_id: @sandals.id, photo: @sandals_pic, user: @ap)

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
@rainbow_sandals1 = ClothingArticle.create(description: "Rainbow Sandals", color: "Brown", clothing_category_id: @sandals.id, photo: @sandals_pic, user: @bs)

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
@gym_shorts2 = ClothingArticle.create(description: "Gym Shorts", color: "Black", clothing_category_id: @shorts.id, photo: @gym_shorts_pic, user: @cc)
@suit2 = ClothingArticle.create(description: "Suit", color: "Navy Blue", clothing_category_id: @suits.id, photo: @suit_pic, user: @cc)
@rainbow_sandals2 = ClothingArticle.create(description: "Rainbow Sandals", color: "Brown", clothing_category_id: @sandals.id, photo: @sandals_pic, user: @cc)

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
@outfit21 = Outfit.create(date: "2014-08-02")
@outfit22 = Outfit.create(date: "2014-08-03")
@outfit23 = Outfit.create(date: "2014-08-04")
@outfit24 = Outfit.create(date: "2014-08-06")
@outfit25 = Outfit.create(date: "2014-07-31")
@outfit26 = Outfit.create(date: "2014-08-07")
@outfit27 = Outfit.create(date: "2014-08-08")
@outfit28 = Outfit.create(date: "2014-08-13")

@outfit29 = Outfit.create(date: "2014-08-02")
@outfit30 = Outfit.create(date: "2014-08-03")
@outfit31 = Outfit.create(date: "2014-08-04")
@outfit32 = Outfit.create(date: "2014-08-06")
@outfit33 = Outfit.create(date: "2014-07-31")
@outfit34 = Outfit.create(date: "2014-08-07")
@outfit35 = Outfit.create(date: "2014-08-08")
@outfit36 = Outfit.create(date: "2014-08-12")
@outfit37 = Outfit.create(date: "2014-08-13")


@outfit38 = Outfit.create(date: "2014-08-03")
@outfit39 = Outfit.create(date: "2014-08-04")
@outfit40 = Outfit.create(date: "2014-08-06")
@outfit41 = Outfit.create(date: "2014-07-31")
@outfit42 = Outfit.create(date: "2014-08-07")
@outfit43 = Outfit.create(date: "2014-08-08")
@outfit44 = Outfit.create(date: "2014-08-11")
@outfit45 = Outfit.create(date: "2014-08-12")
@outfit46 = Outfit.create(date: "2014-08-13")

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
@outfit18.clothing_articles = [@linen_pants2, @blue_button_down2, @rainbow_sandals2]
@outfit19.clothing_articles = [@blue_shorts2, @flatiron_t_shirt2, @rainbow_sandals2]

@outfit20.clothing_articles = [@gym_shorts2, @brown_polo2, @rainbow_sandals2]
@outfit21.clothing_articles = [@levi_jeans2, @red_v_neck, @adidas]
@outfit22.clothing_articles = [@levi_jeans2, @internet_t_shirt, @green_nikes]
@outfit23.clothing_articles = [@levi_jeans2, @red_v_neck, @adidas]
@outfit24.clothing_articles = [@levi_jeans2, @internet_t_shirt, @green_nikes]
@outfit25.clothing_articles = [@levi_jeans2, @internet_t_shirt, @green_nikes]
@outfit26.clothing_articles = [@levi_jeans2, @internet_t_shirt, @green_nikes]
@outfit27.clothing_articles = [@linen_pants, @blue_button_down, @rainbow_sandals]
@outfit28.clothing_articles = [@levi_jeans1, @flatiron_t_shirt, @green_nikes]

@outfit29.clothing_articles = [@gym_shorts1, @brown_polo1, @rainbow_sandals1]
@outfit30.clothing_articles = [@levi_jeans21, @red_v_neck1, @adidas1]
@outfit31.clothing_articles = [@levi_jeans21, @internet_t_shirt1, @green_nikes1]
@outfit32.clothing_articles = [@levi_jeans21, @red_v_neck1, @adidas1]
@outfit33.clothing_articles = [@levi_jeans21, @internet_t_shirt1, @green_nikes1]
@outfit34.clothing_articles = [@levi_jeans21, @internet_t_shirt1, @green_nikes1]
@outfit35.clothing_articles = [@levi_jeans21, @internet_t_shirt1, @green_nikes1]
@outfit36.clothing_articles = [@linen_pants1, @blue_button_down1, @rainbow_sandals1]
@outfit37.clothing_articles = [@levi_jeans11, @flatiron_t_shirt1, @green_nikes1]

@outfit38.clothing_articles = [@gym_shorts2, @brown_polo2, @rainbow_sandals2]
@outfit39.clothing_articles = [@levi_jeans22, @red_v_neck2, @adidas2]
@outfit40.clothing_articles = [@levi_jeans22, @internet_t_shirt2, @green_nikes2]
@outfit41.clothing_articles = [@levi_jeans22, @red_v_neck2, @adidas2]
@outfit42.clothing_articles = [@levi_jeans22, @internet_t_shirt2, @green_nikes2]
@outfit43.clothing_articles = [@levi_jeans22, @internet_t_shirt2, @green_nikes2]
@outfit44.clothing_articles = [@levi_jeans22, @internet_t_shirt2, @green_nikes2]
@outfit45.clothing_articles = [@linen_pants2, @blue_button_down2, @rainbow_sandals2]
@outfit46.clothing_articles = [@levi_jeans12, @flatiron_t_shirt2, @green_nikes2]

puts "Assigning friends to outfits..."

@outfit1.friends = [@chris, @logan, @jon, @denine]
@outfit2.friends = [@ben, @avi]
@outfit3.friends = [@ben, @bianca, @denine]
@outfit4.friends = [@chris, @avi, @logan, @denine]
@outfit5.friends = [@ben, @chris, @denine]
@outfit6.friends = [@logan, @michael, @adam]
@outfit7.friends = [@ben, @bianca]

@outfit8.friends = [@logan1, @tristan1]
@outfit9.friends = [@ana1, @avi1, @matz1, @adam1, @chris1]
@outfit10.friends = [@logan1, @denine1]
@outfit11.friends = [@logan1, @michael1]
@outfit12.friends = [@avi1, @jon1, @adam1]
@outfit13.friends = [@chris1, @logan1, @tristan1]
@outfit14.friends = [@ana1, @bianca1, @denine1]

@outfit15.friends = [@ana2, @michael2, @matz2, @jon2]
@outfit16.friends = [@ben2, @matz2, @jon2]
@outfit17.friends = [@logan2, @denine2]
@outfit18.friends = [@logan2, @jon2]
@outfit19.friends = [@ana2, @tristan2]
@outfit20.friends = [@ben2, @bianca2, @avi2]

@outfit21.friends = [@chris, @logan, @jon, @denine]
@outfit22.friends = [@ben, @avi]
@outfit23.friends = [@ben, @bianca, @denine]
@outfit24.friends = [@chris, @avi, @logan, @denine]
@outfit25.friends = [@ben, @chris, @denine]
@outfit26.friends = [@logan, @michael, @adam]
@outfit27.friends = [@ben, @bianca]

@outfit28.friends = [@chris1, @logan1, @jon1, @denine1]
@outfit29.friends = [@ana1, @avi1]
@outfit30.friends = [@ana1, @bianca1, @denine1]
@outfit31.friends = [@chris1, @avi1, @logan1, @denine1]
@outfit32.friends = [@ana1, @chris1, @denine1]
@outfit33.friends = [@logan1, @michael1, @adam1]
@outfit34.friends = [@ana1, @bianca1]
@outfit35.friends = [@ana1, @michael1, @matz1, @jon1]
@outfit36.friends = [@ana1, @matz1, @jon1]
@outfit37.friends = [@michael1, @jon1]

@outfit38.friends = [@ben2, @logan2, @jon2, @denine2]
@outfit39.friends = [@ana2, @avi2]
@outfit40.friends = [@ana2, @bianca2, @denine2]
@outfit41.friends = [@ben2, @avi2, @logan2, @denine2]
@outfit42.friends = [@ana2, @ben2, @denine2]
@outfit43.friends = [@logan2, @michael2, @adam2]
@outfit44.friends = [@ana2, @bianca2]
@outfit45.friends = [@ana2, @michael2, @matz2, @jon2]
@outfit46.friends = [@ana2, @matz2, @jon2]

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
@outfit21.save
@outfit22.save
@outfit23.save
@outfit24.save
@outfit25.save
@outfit26.save
@outfit27.save
@outfit28.save
@outfit29.save
@outfit30.save
@outfit31.save
@outfit32.save
@outfit33.save
@outfit34.save
@outfit35.save
@outfit36.save
@outfit37.save
@outfit38.save
@outfit39.save
@outfit40.save
@outfit41.save
@outfit42.save
@outfit43.save
@outfit44.save
@outfit45.save
@outfit46.save

puts "Assigning outfits..."

@ap.outfits = [@outfit1, @outfit2, @outfit3, @outfit4, @outfit5, @outfit6, @outfit7, @outfit21, @outfit22, @outfit23, @outfit24, @outfit25, @outfit26, @outfit27]
@bs.outfits = [@outfit8, @outfit9, @outfit10, @outfit11, @outfit12, @outfit13, @outfit14, @outfit28, @outfit29, @outfit30, @outfit31, @outfit32, @outfit33, @outfit34, @outfit35, @outfit36, @outfit37]
@cc.outfits = [@outfit15, @outfit16, @outfit17, @outfit18, @outfit19, @outfit20, @outfit38, @outfit39, @outfit40, @outfit41, @outfit42, @outfit43, @outfit44, @outfit45, @outfit46]

@ap.save
@bs.save
@cc.save

puts "Seeding complete!"

