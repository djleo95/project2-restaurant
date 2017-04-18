Category.create! ([
  {name: "Main",
   description: "Our main course is the featured and primary dish in the meal and consists of several courses."},
  {name: "Burgers",
   description: "We can admit it: Burgers are delicious, but salads are nutritious. Luckily, our robust selection of salads and burgers all taste really spectacular, too. Try them!"},
  {name: "Soups",
   description: "All our soups are freshly made with absolutely no stabilizers, additives or colorings."},
  {name: "Salads",
   description: "Abundant with garden-fresh vegetables and flavorful toppings, our Farm-Fresh Salads reflect the bounty of the heartland."},
  {name: "Sandwich",
   description: "We like to make our own sandwiches. Try our health sandwiches. Need freshness? The new health sandwich is prepared with avocado, hummus, fresh tomatoes, cucumber, lettuce, etc."},
  {name: "Meat",
   description: "Try one of our vibrant, thick cut ribeye steaks and other meat dishes and you will know what we are talking about."},
  {name: "Seafood",
   description: "Try our veggie and fish recipes for the barbecue - oh so tasty and not a banger in sight! We also have more vegetarian dishes"},
  {name: "Drinks",
   description: "Hot Drinks, A little something sweet with your coffee and else...Try our 30 smoothie and frozen drink recipes or put your blender to work to make our best fresh and blended drinks."},
  {name: "Desserts",
   description: "Try the best desserts ever on our city! Are you a chocolate fan? Try these rich chocolate desserts or decadent fudge recipes."},
  {name: "Wines",
   description: "Discover our wine country. There are no rights or wrongs in wine – only your preferences."},
  {name: "Japanese food",
   description: "Food in Japanese style"},
  {name: "Chinese food",
   description: "Food in Chinese style"},
  {name: "Noodle",
   description: "Noodles are a staple food in many cultures made from unleavened dough which is stretched, extruded, or rolled flat and cut into one of a variety of shapes."},
  {name: "Pasta",
   description: "There are many different varieties of pasta, a staple dish of Italian cuisine."},
  {name: "Stews",
   description: "A stew is a combination of solid food ingredients that have been cooked in liquid and served in the resultant gravy. Ingredients in a stew can include any combination of vegetables (such as carrots, potatoes, beans, onions, peppers, tomatoes, etc.), plus meat."},
])

Dish.create! ([
  {name: "Seared Salmon Sushi", price: 12,
   image: "https://img.buzzfeed.com/buzzfeed-static/static/2016-11/11/6/asset/buzzfeed-prod-fastlane01/sub-buzz-24049-1478862047-3.jpg?resize=625:625&no-auto",
   description: "Sushi donuts started trending this year. Are they a step too far? Try this seared salmon donut and decide for yourself.",
   isAvailable: true
  },
  {name: "Naengmyeon", price: 13,
   image: "http://images.media-allrecipes.com/images/57796.jpg",
   description: "A Korean noodle made from the flour and starch of various ingredients, including buckwheat, potatoes, sweet potatoes, arrowroot starch, and kudzu.",
   isAvailable: true
  },
  {name: "Sake Nigiri", price: 21,
   image: "http://farm3.static.flickr.com/2857/11696258203_1b2dea1b6a.jpg",
   description: "The udon was meh. The flavor was ok but not great. The nigiri was buffet level sadly.",
   isAvailable: true
  },
  {name: "Smithfield Foods", price: 17,
   image: "http://www.smithfieldfoods.com/images/home/packaged-brands/armour-food.jpg",
   description: Faker::Food.ingredient, isAvailable: true
  },
  {name: "Peking duck", price: 18,
   image: "http://media.crossingtravel.com/files/tag/2015/11/08/peking-duck-deliciousness-27362.jpg",
   description: "Peking Duck is a dish from Beijing that has been prepared since the imperial era. The meat is characterized by its thin, crisp skin, with authentic versions of the dish serving mostly the skin and little meat, sliced in front of the diners by the cook.",
   isAvailable: true
  },
  {name: "Ikura Gunkan", price: 26,
   image: "http://xspace.talaweb.com/takitaki/home/sanpham/sushi/sushi-trung-ca-hoi.JPG",
   description: "Ikura Gunkan Maki is a sushi in the shape of a gunkan, set salmon roe on the gunkan that wrapped a dried laver around sushi rice. We can eat this dish at sushi restaurants in Japan.",
   isAvailable: true
  },
  {name: "Maguro Nigiri", price: 15,
   image: "http://www.susasushi.it/immagini/sushi-nigiri-maguro.jpg",
   description: "Maguro (mah-goo-roh) or hon-maguro, is the Japanese term for bluefin tuna, perhaps the best known and most commonly eaten fish in all of sushi dining.",
   isAvailable: true
  },
  {name: "Soba noodle", price: 24,
   image: "http://daubepvietnam.vn/wp-content/uploads/2014/10/mi-soba-1.jpg",
   description: "Soba noodles are noodles made of buckwheat flour, roughly as thick as spaghetti, and prepared in various hot and cold dishes.",
   isAvailable: true
  },
  {name: "Samgyetang", price: 28,
   image: "http://www.eatburprepeat.com/wp-content/uploads/2014/09/samgyetang.jpg",
   description: "Samgye-tang - chicken soup. It consists primarily of a whole young chicken, filled with garlic and rice, scallion and spices, among them jujube and Korean ginseng.",
   isAvailable: false
  },
  {name: "Bun Bo Hue", price: 20,
   image: "http://www.smithfieldfoods.com/images/home/packaged-brands/armour-food.jpg",
   description: "Comforting hearty noodle soup with beef & pork in a delicious bold flavored broth, & garnished with fresh herbs & vegetables.",
   isAvailable: true
  },
  {name: "Udon noodle", price: 18,
   image: "http://japan-brand.jnto.go.jp/wp-content/uploads/2014/03/10-a.jpg",
   description: "Udon is often served hot as a noodle soup in its simplest form, as kake udon, in a mildly flavoured broth called kakejiru, which is made of dashi, soy sauce, and mirin.",
   isAvailable: true
  },
  {name: "Goi Cuon", price: 17,
   image: "http://static.asiawebdirect.com/m/bangkok/portals/vietnam/homepage/food/pagePropertiesImage/what-to-eat-in-vietnam.jpg",
   description: "The famous Vietnamese “summer rolls”: shrimp or pork (sometimes both) with herbs, rolled up in rice paper and served cold with a peanut dipping sauce.",
   isAvailable: true
  },
  {name: "Asian Tuna Salad", price: 3,
   image: "https://media-cdn.tripadvisor.com/media/photo-s/02/25/17/12/asian-seared-tuna-salad.jpg",
   description: "Asian inspired tuna salad with radishes, green onions, and shredded carrots, dressed with rice vinegar and sesame oil.",
   isAvailable: true
  },
  {name: "Red Velvet Cake", price: 10,
   image: "https://static01.nyt.com/images/2014/05/14/dining/14REDVELVET/14REDVELVET-articleLarge-v4.jpg",
   description: "This is similar to the original recipe that began the red velvet craze. It was developed by the Adams Extract company in Gonzales, Tex. The original recipe, popularized in the 1940s, called for butter flavoring and shortening and is usually iced with boiled milk, or ermine, frosting.",
   isAvailable: true
  },
  {name: "Chocolate Pudding", price: 9,
   image: "http://www.recipegirl.com/wp-content/uploads/2014/10/Chocolate-Pudding-recipe-RecipeGirl.com_.jpg",
   description: "Ddecadent and delicious, this rich dark chocolate pudding is the perfect creamy treat.",
   isAvailable: true
  },
  {name: "Miso Soup", price: 7,
   image: "https://www.delishknowledge.com/wp-content/uploads/Vegan-Kale-and-Mushroom-Miso-SoupFG-7.jpg",
   description: "Miso soup is the main item in a Japanese breakfast and is usually eaten with rice, eggs, fish, and pickles. The soup is also served for lunch or dinner with more complex garnishes. Dashi is a basic stock, made with dried bonito flakes, that is used extensively in Japanese cooking. Its clarity and flavor can make or break a dish.",
   isAvailable: true
  },
  {name: "Chicken Ramen", price: 15,
   image: "https://img.rasset.ie/00075c3c-800.jpg",
   description: "Shredded chicken, fresh ramen noodles, mushrooms, and an optional egg.",
   isAvailable: true
  },
  {name: "Beef Steak", price: 11,
   image: "http://media.dish.allrecipes.com/wp-content/uploads/2014/11/239651Savory-Garlic-Marinated-Steaks-17325-CookinBug.jpg",
   description: "This beautiful marinade adds an exquisite flavor to these already tender steaks. The final result will be so tender and juicy, it will melt in your mouth.",
   isAvailable: true
  },
  {name: "Spaghetti Italian", price: 13,
   image: "http://www.cookingclassy.com/wp-content/uploads/2012/11/spaghetti+with+meat+sauce11.jpg",
   description: "Delicious and not so sweet. Good to the last bowl!!",
   isAvailable: true
  },
  {name: "Sapporo beer", price: 22,
   image: "https://sapporobeer.com/assets/Uploads/black/product-listing-can.png",
   description: "The great taste of our beer has been enjoyed by people all over the world for generations.",
   isAvailable: true
  },
  {name: "Galliano Liquore", price: 33,
   image: "http://simple-cocktails.com/wp-content/uploads/2014/03/photo-3.jpg",
   description: "The original taste of Italy. Golden Yellow in colour with a light green hue. Galliano Vanilla is made from a selection of more than 30 herbs and spices such as star anise, juniper, musk yarrow, ginger, lavender and last but not least, the delicate and smooth flavour of vanilla - with a process of seven infusions and six distillations.",
   isAvailable: true
  },
  {name: "Di Saronno Amaretto", price: 44,
   image: "http://www.31dover.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/d/i/disaronno_05.png",
   description: "Di Saronno is made in Saronno, Italy, using only the highest quality natural ingredients like absolute alcohol, burnt sugar and the pure essence of seventeen selected herbs and fruits soaked in apricot kernel oil.",
   isAvailable: true
  },
  {name: "Bubble tea", price: 8,
   image: "http://img.aws.livestrongcdn.com/ls-article-image-673/cme/cme_public_images/www_livestrong_com/photos.demandstudios.com/getty/article/152/137/153728711_XS.jpg",
   description: "A Taiwanese tea-based drink invented in Taichung in the 1980s.[1] Most bubble tea recipes contain a tea base mixed/shaken with fruit or milk, to which chewy tapioca balls and fruit jelly are often added.",
   isAvailable: true
  },
  {name: "Sweet Heat Burger", price: 10,
   image: "https://www.99restaurants.com/media/1426/sweet_heat_burger_web-640.jpg",
   description: "This juicy burger is topped with Vermont Cheddar cheese, sweet jalapeño relish, crispy jalapeños, lettuce, tomato and a chipotle drizzle.",
   isAvailable: true
  },
  {name: "Bacon & Cheese Burger", price: 8,
   image: "http://geekologie.com/2016/02/23/double-bacon-cheeseburger-the-person.jpg",
   description: "You can never go wrong with applewood smoked bacon and melted American cheese.",
   isAvailable: true
  },
  {name: "Apple BBQ Chicken Sandwich", price: 11,
   image: "https://www.99restaurants.com/media/1717/sandwich_applebbqchix_trabon_crop_web-640.jpg",
   description: "Flame-broiled boneless chicken breast, sweet apple BBQ sauce, Vermont Cheddar cheese and applewood smoked bacon. Served on a signature potato roll with lettuce and tomato.",
   isAvailable: true
  },
  {name: "Chicken Kebab Salad", price: 11,
   image: "https://www.99restaurants.com/media/1440/chicken_kabob_salad_web-640.jpg",
   description: "Fresh mixed greens are topped with flame-broiled marinated chicken tips, tomatoes, cucumbers, roasted red peppers, red onions and finished with feta cheese, Kalamata olives, fresh oregano and banana peppers. Served with creamy Mediterranean dressing.",
   isAvailable: true
  },
  {name: "Fresh Balsamic Salmon", price: 25,
   image: "https://www.99restaurants.com/media/1510/fresh_balsamic_salmon_web-640.jpg",
   description: "A fresh North Atlantic salmon filet is lightly seasoned, roasted and finished with a balsamic glaze. Served with rice and vegetable. Seasoned Salmon also available. Just ask!",
   isAvailable: false
  },
  {name: "Devil's food cake", price: 12,
   image: "http://andberlin.com/wp-content/uploads/2012/05/barcomis-deli-devils-food-cake.jpg",
   description: "Devil's food cake is commonly a dense, rich chocolate cake, quite different from other chocolate cakes such as the German chocolate cake.",
   isAvailable: true
  },
  {name: "Blueberry pie", price: 17,
   image: "http://www.bakerssquare.com/i/pies/profile/blueberry_main1.jpg",
   description: "Blueberry pie is a pie with a blueberry filling. Blueberry pie is considered one of the easiest pies to make because it does not require pitting or peeling of fruit. It usually has a top and bottom crust.",
   isAvailable: true
  },
  {name: "Shabu shabu", price: 36,
   image: "http://travels.kilroy.net/media/5107637/japan-food-shabu-shabu.jpg",
   description: "The food is cooked piece by piece by the diner at the table. Shabu-shabu is considered to be more savory and less sweet than sukiyaki.",
   isAvailable: true
  },
  {name: "Sake", price: 20,
   image: "http://sethlui.com/wp-content/uploads/2015/04/sake-lessons-1379.jpg",
   description: "Sake is a Japanese rice wine made by fermenting rice that has been polished to remove the bran. ",
   isAvailable: true
  },
  {name: "Chinese Fried Rice", price: 7,
   image: "http://pictures.food.com/api/file/gpcRqESQQZGx9GUrVljG-IMG_0704.jpg/convert?loc=/pictures.food.com/recipes/38/74/8/uXUajHqyRq0TEyO7rfDX_IMG_0704.jpg&width=560&height=420&fit=crop&flags=progressive&quality=95",
   description: "This Chinese fried rice has the flavor those other recipes are missing. Tastes like takeout.",
   isAvailable: true
  },
  {name: "Baijiu", price: 12,
   image: "http://www.attractchina.com/wp-content/uploads/2014/11/BN-EB948_baijiu_G_20140813054709.jpg",
   description: "Baijiu literally means white (clear) alcohol, and is a strong distilled spirit, generally between 40 and 60% alcohol by volume (ABV).",
   isAvailable: true
  },
  {name: "Soju", price: 21,
   image: "http://2.bp.blogspot.com/-_f-6E71HkEI/TrxitSByh1I/AAAAAAAAGqI/mi12UNHNM3Y/s1600/DSC00275.JPG",
   description: "A distilled beverage containing ethanol and water. It is usually consumed neat.",
   isAvailable: true
  },
  {name: "Gimbap", price: 16,
   image: "http://3.bp.blogspot.com/-VappEk0BRdI/T5we9oZg1SI/AAAAAAAAAsM/I2aNehLV2Nw/s1600/21+06.jpg",
   description: "Kimchi made by salting and preserving fermented cabbage in a bed of pepper, garlic, ginger and scallion.",
   isAvailable: true
  },
  {name: "Kimchi", price: 21,
   image: "http://korea.prkorea.com/wordpress/english/files/2012/03/baechukimchi.jpg",
   description: "A distilled beverage containing ethanol and water. It is usually consumed neat.",
   isAvailable: true
  },
  {name: "Onsen tamago", price: 8,
   image: "http://www.justonecookbook.com/wp-content/uploads/2015/01/Onsen-Tamago.jpg",
   description: "The easiest method is to use an immersion circulator, which, like the onsen waters, can hold precise temperatures for as long as you need. ",
   isAvailable: true
  },
  {name: "Mountain Yam Salad", price: 14,
   image: "https://s-media-cache-ak0.pinimg.com/originals/21/40/ac/2140acc02ebb239522b7e1922e0b2982.jpg",
   description: "Nagaimo (Japanese mountain yam) salad is an elegant appetizer of raw, crisp yam that can be prepared quickly and is served with soy sauce and simple garnishes.",
   isAvailable: true
  },
  {name: "Tofu", price: 11,
   image: "https://bebeloveokazu.files.wordpress.com/2012/06/hiyayako-1.jpg",
   description: "Tofu is made of curdled soy milk, pressed into blocks in a process similar to making cheese.",
   isAvailable: true
  },
  {name: "Otoro sasimi", price: 27,
   image: "http://xspace.talaweb.com/takitaki/home/sanpham/sashimi/DSC05926.JPG",
   description: "Otoro is taken from the actual under-belly inside the tuna, and it is by itself separated into grades which happen to be recognized according to the marbling through out the steak, very similar to inside grading beef.",
   isAvailable: true
  },
  {name: "Oysters Gin and Tonic", price: 35,
   image: "https://www.tastebyronbay.com/wp-content/uploads/2015/12/ink-jelly-oysters-1.jpg",
   description: "Kumamotos are a breed of oyster farmed on the West Coast. They are smaller than most East Coast oysters and have a creamy texture. The raw oysters are complemented by the cucumber and herbal notes of gin.",
   isAvailable: true
  },
  {name: "Carabinero shirm", price: 39,
   image: "https://s-media-cache-ak0.pinimg.com/736x/d5/43/4d/d5434d0ea834ae0d33538cc84b50838f.jpg",
   description: "Given their name by the Spanish – reputedly because the color of their shells matched the uniforms of Spanish customs police, their distinct red color does not change when cooked (as does a lobster shell from blue to red when boiled.)",
   isAvailable: true
  },
  {name: "Hokkaido scallops", price: 23,
   image: "https://farm9.staticflickr.com/8682/15475285283_ccdd9cae92_o.jpg",
   description: "Sweet in flavor, serve raw or delicately sautéed to highlight the natural flavor of these succulent scallops.",
   isAvailable: true
  },
  {name: "Stewed monkfish", price: 25,
   image: "http://www.lexibites.com/wp-content/uploads/2015/08/Catalan-Fish-Stew-Process-2-1-web.jpg",
   description: "Suquet is the diminutive form of suc, or 'juice', in Catalan, which meansthat this wonderfully flavored dish is more correctly called juicy fish stew.",
   isAvailable: true
  },
  {name: "Catalan Roasted Pularda", price: 17,
   image: "https://c1.staticflickr.com/8/7460/27639202312_3c9bb4c5cb_z.jpg",
   description: "This Bresse chicken holds an appellation d'origine contrôlée (AOC) status, and fittingly, is tender and moist, with a savoury sweet flavour. Served with prunes, apricots, and pine nuts!",
   isAvailable: true
  },
  {name: "Vanilla Frozen Yogurt", price: 21,
   image: "https://bebeloveokazu.files.wordpress.com/2012/06/hiyayako-1.jpg",
   description: "This frozen yogurt is so much easier than homemade ice cream! Just so you know, this freezes a lot quicker than ice cream. Feel free to decrease the sugar!",
   isAvailable: true
  },
  {name: "Chawanmushi", price: 17,
   image: "http://www.tastehongkong.com/wp/2010/chawan-mushi.jpg",
   description: "The custard consists of an egg mixture flavored with soy sauce, dashi, and mirin, with numerous ingredients such as shiitake mushrooms, kamaboko, yuri-ne, ginkgo and boiled shrimp placed into a tea-cup-like container.",
   isAvailable: true
  },
  {name: "Chicken ceasar salad", price: 9,
   image: "http://saocafelagos.com/wp-content/uploads/2015/07/Chicken-Caesar-Salad.jpg",
   description: "Chopped romaine & iceberg blend, all-natural chicken, chopped eggs, croutons, parmesan cheese, suggested dressing: parmesan caesar.",
   isAvailable: true
  },
  {name: "Gyudon", price: 22,
   image: "http://www.seriouseats.com/images/2016/07/20160711-gyudon-beef-rice-bowl-japanese-recipe-15.jpg",
   description: "Gyudon is like a comfort food for Japanese.  It can be prepared quickly and it has nutritious ingredients like beef, onion, eggs, and rice.",
   isAvailable: true
  },
  {name: "Pickled cucumber", price: 10,
   image: "http://www.motherearthnews.com/real-food/~/media/Images/MEN/Editorial/Blogs/Natural%20Health/Are%20Pickles%20Fermented%20Pickled%20vs%20Fermented%20Foods/Why-Fermented-Foods-are-Healthy.jpg?h=366&w=550&hash=B2C0CBAF69B74A5DDBFFABA640A685266CDD72F5",
   description: "Cucumber pickled in a brine, vinegar, or other solution and left to ferment for a period of time, by either immersing the cucumbers in an acidic solution or through souring by lacto-fermentation.",
   isAvailable: true
  },
  {name: "Zakkoku Mai", price: 9,
   image: "http://www.lafujimama.com/wp-content/uploads/2010/01/Leftover-zakkoku-mai.jpg",
   description: "This conundrum presented itself the other day after we had zakkoku mai with our roast chicken.",
   isAvailable: true
  },
  {name: "Eel rice", price: 16,
   image: "https://apinchofsaltandsugar.files.wordpress.com/2014/02/dsc02851.jpg",
   description: "Eels are elongated fish, ranging in length from 5 centimetres (2.0 in) to 4 metres (13 ft). Adults range in weight from 30 grams to over 25 kilograms.",
   isAvailable: true
  },
  {name: "Tempura", price: 11,
   image: "http://jpninfo.com/wp-content/uploads/2015/08/tempura-1.jpg",
   description: "Tempura is a Japanese dish of seafood or vegetables that have been battered and deep fried.",
   isAvailable: true
  },
  {name: "Chutoro sasimi", price: 13,
   image: "http://geekyelephant.com/wp-content/uploads/2014/12/20141210-%C2%A9Eleanor-Tay-Geeky-Elephant-Oceans-of-Seafood-157.jpg",
   description: "Chutoro sasimi is the name for medium fatty tuna when served in sushi restaurant.",
   isAvailable: true
  },
  {name: "Chicken Teriyaki Sauce", price: 14,
   image: "http://farm3.static.flickr.com/2404/2906751400_633d705e28.jpg",
   description: "While teriyaki may have originally been a grilled dish, these days in Japan, the chicken is pan-fried more often than not due to busy schedules and a lack of charcoal grills.",
   isAvailable: true
  },
  {name: "Dashi", price: 10,
   image: "http://pic.pimg.tw/amy0313/1372464295-2613566887.jpg",
   description: "Dashi forms the base for miso soup, clear broth, noodle broth, and many kinds of simmering liquid, mixed into flour base of some grilled foods like okonomiyaki and takoyaki.",
   isAvailable: true
  },
  {name: "Nikujaga", price: 8,
   image: "http://www.justonecookbook.com/wp-content/uploads/2012/04/Nikujaga-III.jpg",
   description: "Nikujaga (meaning meat-potato) is a Japanese dish of meat, potatoes and onion stewed in sweetened soy sauce, sometimes with ito konnyaku and vegetables.",
   isAvailable: true
  },
  {name: "Salad", price: 5,
   image: "http://toinayangi.vn/wp-content/uploads/2015/04/mon-salad-tron-dau-giam.jpg",
   description: "Salad is any of a wide variety of dishes including: green salads; vegetable salads; mixed salads incorporating meat, poultry, or seafood; and fruit salads.",
   isAvailable: true
  },
  {name: "Cheeseburger", price: 16,
   image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cheeseburger.jpg/800px-Cheeseburger.jpg",
   description: "A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition.",
   isAvailable: true
  },
  {name: "Kimchi burger", price: 19,
   image: "https://johnrieber.files.wordpress.com/2013/05/kimchi-burger.jpg",
   description: "A kimchi burger is a hamburger that includes kimchi in its preparation. Several restaurants serve kimchi burgers as part of their fare, including restaurants in South Korea, England and the United States.",
   isAvailable: true
  },
  {name: "Oolong tea", price: 5,
   image: "http://www.thefitindian.com/wp-content/uploads/2015/11/oolong-tea-powder.jpg",
   description: "Oolong is a traditional Chinese tea (Camellia sinensis) produced through a unique process including withering under the strong sun and oxidation before curling and twisting.",
   isAvailable: true
  },
  {name: "Matcha", price: 12,
   image: "http://niskevesti.rs/wp-content/uploads/2017/01/matcha-zeleni-caj.jpg",
   description: "Matcha, a type of powdered green tea popular in Japan, is produced by being finely milled — and used in other contexts, such as flavouring sweets.",
   isAvailable: true
  },
  {name: "Caffè Mocha", price: 15,
   image: "https://s-media-cache-ak0.pinimg.com/564x/dc/cd/b4/dccdb47c804177c6f7d2f1c258237914.jpg",
   description: "caffè mocha is based on espresso and hot milk, but with added chocolate, typically in the form of sweet cocoa powder, although many varieties use chocolate syrup.",
   isAvailable: true
  },
  {name: "Caffè Cappuccino", price: 15,
   image: "http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/food_and_drink_that_make_you_gotta_go_slideshow/getty_rm_photo_of_cappuccino.jpg",
   description: "A cappuccino is an Italian coffee drink that is traditionally prepared with double espresso, hot milk, and steamed milk foam.",
   isAvailable: true
  },
  {name: "Caffè Latte", price: 15,
   image: "https://aos.iacpublishinglabs.com/question/aq/1400px-788px/difference-between-coffee-latte_2c18b570c133eef8.jpg?domain=cx.aos.ask.com",
   description: "A latte is a coffee drink made with espresso and steamed milk.",
   isAvailable: true
  },
  {name: "Caffè Americano", price: 15,
   image: "http://www.peachpubs.com/wp-content/uploads/2015/08/black_coffee_cup_nice-1680x1050.jpg",
   description: "Caffè Americano is a style of coffee prepared by brewing espresso with added hot water, giving it a similar strength to, but different flavor from drip coffee.",
   isAvailable: true
  },
  {name: "Lemonade", price: 15,
   image: "https://www.tastesoflizzyt.com/wp-content/uploads/2016/06/easy-frozen-lemonade-drink-23.jpg",
   description: "Lemonade is the name for a number of sweetened beverages found around the world, all characterized by lemon flavor.",
   isAvailable: true
  },
  {name: "Pork Belly Kimchi Stew", price: 9,
   image: "http://bcdtofu.com/image/Exkinchisoontofu.jpg",
   description: "Kimchi Jjigae is a spicy Korean stew made with fermented kimchi, pork belly and tofu. You'll have no problem finishing a big bowl of rice with Kimchi Stew!",
   isAvailable: true
  },
  {name: "Seafood Soft Tofu Stew", price: 7,
   image: "https://s-media-cache-ak0.pinimg.com/originals/bc/37/35/bc37359e38e92d82cdd6c06b669222b7.jpg",
   description: "This traditional Korean soft tofu stew known as Soondubu Jjigae is a spicy, comforting, and bubbling bowl of flavorful broth filled with seafood and tofu.",
   isAvailable: true
  },
  {name: "Kimchi Fried Rice", price: 8,
   image: "http://orchardstreetkitchen.com/wp-content/uploads/2014/08/IMG_9911.jpg",
   description: "Kimchi Fried Rice - the easiest and best fried rice made with Korean kimchi. Spicy, flavorful and absolutely delicious.",
   isAvailable: true
  },
  {name: "Bibimbap", price: 14,
   image: "http://cdn2.koreanbapsang.com/wp-content/uploads/2010/02/Bibimbap.jpg",
   description: "Bibimbap is served as a bowl of warm white rice topped with namul (sautéed and seasoned vegetables) and gochujang (chili pepper paste), soy sauce, or doenjang (a fermented soybean paste). A raw or fried egg and sliced meat (usually beef) are common additions.",
   isAvailable: true
  },
  {name: "Korean glass noodle stir fry", price: 14,
   image: "http://3.bp.blogspot.com/-TQd0ehVI3-I/U4ApMhofGII/AAAAAAAAJGs/1ibUI-oFQ84/s1600/Japchae_4271.jpg",
   description: "Japchae or chapchae is a very popular Korean dish. It is the number one sought after dish during the Korean festive holidays (e.g. New Year’s day and Harvest festival).",
   isAvailable: true
  },
  {name: "Coconut Sambal", price: 7,
   image: "http://www.amisvegetarian.com/wp-content/uploads/2014/09/sambol6.jpg",
   description: "Coconut sambol is a famous side dish in Sri Lanka, Almost everyday during break fast coconut sambol ... Wow this sambal is our family fav.",
   isAvailable: true
  },
  {name: "Kingfish Collar", price: 25,
   image: "http://thecraversguide.com/wp-content/uploads/2014/09/Baked-Kingfish-Collar-Pickled-vegetable-Miso-Orange-Ginger-Lemon-Mayo-e1412041228405.jpg",
   description: "When I spotted some kingfish collars recently at the market, I was excited. The “odd bits” of fish - the head, tail and collars - are.",
   isAvailable: true
  },
  {name: "Tteok-bokki", price: 8,
   image: "http://citydergisi.com/wp-content/uploads/2015/11/tteokbokki-2.jpg",
   description: "Tteok-bokki is a popular Korean food made from small-sized garae-tteok (long, white, cylinder-shaped rice cakes) called tteokmyeon or commonly tteok-bokki-tteok.",
   isAvailable: true
  },
  {name: "Green Tea", price: 3,
   image: "https://s-media-cache-ak0.pinimg.com/originals/e0/be/e1/e0bee112f0413930ddf21613407b823e.jpg",
   description: "Whether you want to cool off in the summer or warm up in the winter, it appears that green tea is full of antioxidants to help boost your immune system.",
   isAvailable: true
  },
  {name: "Tandoori Chicken", price: 10,
   image: "https://i.dawn.com/large/2015/08/55cb2e197291b.jpg",
   description: "Tandoori chicken is a yoghurt and spice marinated chicken cooked in a tandoor, a cylindrical clay oven. It is a popular dish originating from the Indian subcontinent.",
   isAvailable: true
  },
  {name: "Cauliflower pilaf", price: 7,
   image: "http://www.taste.com.au/images/recipes/sfi/2011/05/indian-chicken-and-cauliflower-pilaf-22168_l.jpeg",
   description: "This healthy rice dish is the perfect store-cupboard dinner - you can swap the lentils for chickpeas, add different vegetables or use any curry paste you have on hand.",
   isAvailable: true
  },
  {name: "Pork Ribs", price: 20,
   image: "https://workingwithgrace.files.wordpress.com/2012/08/baby-back-pork-ribs.jpg",
   description: "Grill, smoke, slow-cook or oven-bake your way to barbecue heaven with pork rib recipes, including spareribs, country ribs and baby back ribs.",
   isAvailable: true
  },
  {name: "Rendang", price: 17,
   image: "http://cdn.noshon.it/wp-content/uploads/2012-10-17-r-beef-rendang.jpg",
   description: "Rendang is a spicy meat dish which originated from the Minangkabau ethnic group of Indonesia, and is now commonly served across the country.",
   isAvailable: true
  },
  {name: "Mango Sorbet", price: 5,
   image: "Tart, sweet, and very rich, this simple mango sorbet has a creamy texture verging on ice cream.",
   description: "http://images.getmecooking.com/recipes/raw-mango-sorbet/raw-mango-sorbet.jpg",
   isAvailable: true
  },
  {name: "Pumpkin & Kale Salad", price: 6,
   image: "http://blog.fatfreevegan.com/wp-content/uploads/2012/10/kale-sweet-potato-pepita-salad2.jpg",
   description: "This hearty vegan pilaf combines sweet pumpkin, crunchy pepitas and healthy kale with spice-filled quinoa.",
   isAvailable: true
  },
  {name: "Braised Chicken With Noodle", price: 13,
   image: "http://4.bp.blogspot.com/-JI6u9tNQ-pk/VfpprZ4dKxI/AAAAAAAAETg/Hr_NqLYhSxY/s1600/Braised%2BChicken%2BNoodle%2BSoup.jpg",
   description: "Warm up with a cozy braised chicken stew tonight for dinner. Find this this braised chicken recipe at Chatelaine.com!",
   isAvailable: true
  },
  {name: "Grilled Saba", price: 15,
   image: "https://previews.123rf.com/images/voraorn/voraorn1304/voraorn130400024/18880436-Saba-Fish-Steak-Stock-Photo.jpg",
   description: "Salt Grilled Mackerel or Saba Shioyaki is a popular seafood dishes served as an entrée or part of a bento combination in Japanese restaurants.",
   isAvailable: true
  },
  {name: "Tagliatelle", price: 19,
   image: "http://www.bellaitalia.co.uk/wp-content/uploads/2015/06/tagliatelle-pomodoro048.jpg",
   description: "Tagliatelle and tagliolini are a traditional type of pasta from Emilia-Romagna and Marche, regions of Italy.",
   isAvailable: true
  },
  {name: "Chè thập cẩm", price: 3,
   image: "http://media.phunutoday.vn/files/upload_images/2015/04/02/nau-che-thap-cam-3.jpg",
   description: "Varieties of Chè are made with mung beans, black-eyed peas, kidney beans, tapioca, jelly (clear or grass), fruit (longan, mango, durian, lychee or jackfruit), and coconut cream.",
   isAvailable: true
  },
  {name: "Crème caramel", price: 7,
   image: "http://www.sunnyqueen.com.au/wp-content/uploads/2013/04/CremeCaramel2.jpg",
   description: "Crème caramel is a variant of plain custard (crème) where sugar syrup cooked to caramel stage is poured into the mold before adding the custard base.",
   isAvailable: true
  },
  {name: "Bacon and egg pie", price: 9,
   image: "http://www.sunnyqueen.com.au/wp-content/uploads/2013/09/egg-and-bacon-pie2009-09-21-113638.jpg",
   description: "The bacon and egg pie is a savory pie consisting of a crust containing bacon, egg and sometimes onion, peas, tomato and cheese.",
   isAvailable: true
  },

])

ComboDish.create!([
  {combo_id: 1,
   dish_id: 1
  },
  {combo_id: 1,
   dish_id: 3
  },
  {combo_id: 1,
   dish_id: 7
  },
  {combo_id: 1,
   dish_id: 41
  },
  {combo_id: 1,
   dish_id: 55
  },
  {combo_id: 2,
   dish_id: 23
  },
  {combo_id: 2,
   dish_id: 62
  },
  {combo_id: 2,
   dish_id: 63
  },
  {combo_id: 2,
   dish_id: 64
  },
  {combo_id: 2,
   dish_id: 65
  },
  {combo_id: 2,
   dish_id: 66
  },
  {combo_id: 2,
   dish_id: 67
  },
  {combo_id: 2,
   dish_id: 68
  },
  {combo_id: 3,
   dish_id: 14
  },
  {combo_id: 3,
   dish_id: 29
  },
  {combo_id: 3,
   dish_id: 15
  },
  {combo_id: 3,
   dish_id: 30
  },
  {combo_id: 4,
   dish_id: 31
  },
  {combo_id: 4,
   dish_id: 40
  },
  {combo_id: 4,
   dish_id: 17
  },
  {combo_id: 4,
   dish_id: 6
  },
  {combo_id: 4,
   dish_id: 20
  },
  {combo_id: 5,
   dish_id: 5
  },
  {combo_id: 5,
   dish_id: 33
  },
  {combo_id: 5,
   dish_id: 34
  },
  {combo_id: 5,
   dish_id: 59
  },
  {combo_id: 6,
   dish_id: 24
  },
  {combo_id: 6,
   dish_id: 25
  },
  {combo_id: 6,
   dish_id: 60
  },
  {combo_id: 6,
   dish_id: 26
  },
  {combo_id: 6,
   dish_id: 61
  },
  {combo_id: 7,
   dish_id: 2
  },
  {combo_id: 7,
   dish_id: 9
  },
  {combo_id: 7,
   dish_id: 35
  },
  {combo_id: 7,
   dish_id: 61
  },
  {combo_id: 8,
   dish_id: 2
  },
  {combo_id: 8,
   dish_id: 8
  },
  {combo_id: 8,
   dish_id: 10
  },
  {combo_id: 8,
   dish_id: 11
  },
  {combo_id: 8,
   dish_id: 17
  },
  {combo_id: 8,
   dish_id: 33
  },
  {combo_id: 8,
   dish_id: 52
  },
  {combo_id: 10,
   dish_id: 16
  },
  {combo_id: 10,
   dish_id: 38
  },
  {combo_id: 10,
   dish_id: 39
  },
  {combo_id: 10,
   dish_id: 40
  },
  {combo_id: 10,
   dish_id: 41
  },
  {combo_id: 9,
   dish_id: 42
  },
  {combo_id: 9,
   dish_id: 43
  },
  {combo_id: 9,
   dish_id: 44
  },
  {combo_id: 9,
   dish_id: 45
  },
  {combo_id: 9,
   dish_id: 46
  },
  {combo_id: 9,
   dish_id: 47
  },
  {combo_id: 11,
   dish_id: 48
  },
  {combo_id: 11,
   dish_id: 50
  },
  {combo_id: 11,
   dish_id: 49
  },
  {combo_id: 11,
   dish_id: 51
  },
  {combo_id: 11,
   dish_id: 52
  },
  {combo_id: 11,
   dish_id: 58
  },
  {combo_id: 12,
   dish_id: 11
  },
  {combo_id: 12,
   dish_id: 52
  },
  {combo_id: 12,
   dish_id: 40
  },
  {combo_id: 12,
   dish_id: 39
  },
  {combo_id: 12,
   dish_id: 3
  },
  {combo_id: 13,
   dish_id: 13
  },
  {combo_id: 13,
   dish_id: 54
  },
  {combo_id: 13,
   dish_id: 48
  },
  {combo_id: 13,
   dish_id: 51
  },
  {combo_id: 13,
   dish_id: 52
  },
  {combo_id: 13,
   dish_id: 57
  },
  {combo_id: 14,
   dish_id: 53
  },
  {combo_id: 14,
   dish_id: 48
  },
  {combo_id: 14,
   dish_id: 59
  },
  {combo_id: 14,
   dish_id: 54
  },
  {combo_id: 14,
   dish_id: 16
  },
  {combo_id: 14,
   dish_id: 55
  },
  {combo_id: 14,
   dish_id: 51
  },
  {combo_id: 14,
   dish_id: 51
  },
  {combo_id: 15,
   dish_id: 27
  },
  {combo_id: 15,
   dish_id: 51
  },
  {combo_id: 15,
   dish_id: 52
  },
  {combo_id: 15,
   dish_id: 48
  },
  {combo_id: 15,
   dish_id: 56
  },
  {combo_id: 15,
   dish_id: 58
  },
  {combo_id: 18,
   dish_id: 70
  },
  {combo_id: 18,
   dish_id: 71
  },
  {combo_id: 18,
   dish_id: 72
  },
  {combo_id: 18,
   dish_id: 73
  },
  {combo_id: 18,
   dish_id: 76
  },
  {combo_id: 18,
   dish_id: 77
  },
  {combo_id: 18,
   dish_id: 69
  },
  {combo_id: 17,
   dish_id: 74
  },
  {combo_id: 17,
   dish_id: 75
  },
  {combo_id: 17,
   dish_id: 78
  },
  {combo_id: 17,
   dish_id: 79
  },
  {combo_id: 17,
   dish_id: 80
  },
  {combo_id: 17,
   dish_id: 81
  },
  {combo_id: 17,
   dish_id: 82
  },
  {combo_id: 17,
   dish_id: 83
  },
  {combo_id: 16,
   dish_id: 83
  },
  {combo_id: 16,
   dish_id: 84
  },
  {combo_id: 16,
   dish_id: 73
  },
])

Combo.create!([
  {name: "Special Sushi set",
   description: "Have a festive time as you visit Golden King Buffet Restaurant with the advantage of this MetroDeal and save 30% off the regular price",
   image: "http://kenh14cdn.com/2017/fresh-west-indies-sushi-1487754807350-0-0-1055-1688-crop-1487754828923.jpg",
   discount: 30,
   from: DateTime.new(2017, 4, 7),
   to: DateTime.new(2017, 4, 14)},
  {name: "Worth of Drink",
   description: "Enjoy an outstanding selection of drink at Not Just Lemons in Sky Garden SM City North EDSA by taking advantage of today's MetroDeal",
   image: "https://d1sttufwfa12ee.cloudfront.net/uploads/deal/thumb/49029_3.jpg",
   discount: 45,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Delectable Whole dessert",
   description: "Choose from the following luscious 8-inch round cakes: Double Chocolate Cheesecake, Mocha/Fudge Cheesecake, Moist Chocolate Cake, Old Fashion Mocha, Red Velvet",
   image: "http://www.sakura-hostel.co.jp/blog/SP.jpg",
   discount: 50,
   from: DateTime.new(2017, 4, 11),
   to: DateTime.new(2017, 4, 15)},
  {name: "Shabu shabu with drink!!!",
   description: "Enjoy traditional Japanese hot pot dishes with P1000 worth of food and drinks at Ganso-Shabuway Japanese Style Hot Pot.",
   image: "http://daotaobeptruong.vn/images/daotaobeptruong/tin-tuc-hoc-nau-an/day-nau-an-lau-nhat-shabu-shabu.jpg",
   discount: 45,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Worth of Chinese food",
   description: "Flavorful Grilled Pork Belly, Yang Chow Fried Rice & More.",
   image: "https://d1sttufwfa12ee.cloudfront.net/uploads/deal/thumb/48451.jpg",
   discount: 31,
   from: DateTime.new(2017, 3, 31),
   to: DateTime.new(2017, 4, 3)},
  {name: "Worth of Delicious Burgers",
   description: "For the health conscious eaters, Big Better Burgers also has a line of fish and chicken fillet sandwiches and rice meals",
   image: "https://d1sttufwfa12ee.cloudfront.net/uploads/deal/thumb/45586_2.jpg",
   discount: 41,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Worth of Korean Food",
   description: "The craze for Korean-styled fried chicken has been continuously growing its patrons all over the world, but if you're one of those who still haven't tried this savory meal, no worries as with this MetroDeal exclusively from Gangnam Wings you'll surely have your chance.",
   image: "https://d1sttufwfa12ee.cloudfront.net/uploads/deal/thumb/48636.jpg",
   discount: 35,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "1-for-1 Rice or Noodles",
   description: "Siam Kitchen is where old world meets new, as the restaurant brings authentic dishes of ancient Siam to young diners with a discerning palate. Let our bona fide chefs from Thailand, handpicked for their ability to whip up delicious home–styled Thai cuisine, thrill you with familiar favourites such as Tom Yum Goong, Green Curry and their crunchy Sesame Prawn Sticks.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/58787664e4b033c8ebf4a7ef/oo_20170321_9504.jpg",
   discount: 31,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 5)},
  {name: "Wine Appreciation Night with Torelló",
   description: "Prices are subjected to 10% service charge and prevailing government taxes. Please note that once this promotion has been selected and confirmed, requests for cancellation will not be accepted.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5822e0b2e4b09fe8968a538f/pan-seared-pink-salmon-img-0355_20170317_3158.jpg",
   discount: 30,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Bluefin Tuna Carving $88/pax",
   description: "Hanami Festival: Bluefine Tuna Carving @$88/pax with a choice of Wayu Rib or Mangalica Pork",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5850c23fe4b0d85dba877de9/promo_20170323_4217.jpg",
   discount: 25,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Set Lunch Gyu Niku Shogayaki Gozen",
   description: "Enjoy a variety of set lunch specials at Kyoaji Dining where the third set lunch order will be complimentary!",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5823c338e4b0de82c5479a52/dsc-2497-gyuniku-shogayaki-gozen_20170201_3952.jpg",
   discount: 40,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Set Lunch Shake To Udon Gozen",
   description: "Prices are subjected to 7% GST and 10% service charge. The Management reserves the right to amend the terms and conditions without prior notice.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5823c338e4b0de82c5479a52/dsc-2477-shake-to-udon-gozen_20170201_1344.jpg",
   discount: 40,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Set Lunch Tempura Gozen",
   description: "Prices are subjected to 7% GST and 10% service charge. The Management reserves the right to amend the terms and conditions without prior notice.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5823c338e4b0de82c5479a52/dsc-2524-tempura-gozen_20170201_6215.jpg",
   discount: 35,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Set Lunch Bento",
   description: "Prices are subjected to 7% GST and 10% service charge. The Management reserves the right to amend the terms and conditions without prior notice.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5823c338e4b0de82c5479a52/dsc-2527-bento_20170201_7955.jpg",
   discount: 40,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "Set Lunch Kijiyaki Gozen",
   description: "Prices are subjected to 7% GST and 10% service charge. The Management reserves the right to amend the terms and conditions without prior notice.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/5823c338e4b0de82c5479a52/dsc-2493-kijiyaki-gozen_20170201_1880.jpg",
   discount: 30,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 22)},
  {name: "10% Off Lunch Total Bill",
   description: "1. Valid from Monday to Saturday, lunch only.
2. Cannot be used in conjunction with other promotions, discounts or vouchers.
3. The management reserves the right to amend the terms and conditions without prior notice.",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/58575902e4b0022b5af02172/2_20170208_2100.jpg",
   discount: 10,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 30)},
  {name: "Set Dinner Asian style",
   description: "• Image used is only for illustration purposes
• No service charge
• The Management reserves the right to amend the terms and conditions without prior notice",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/51aef040e4b0e4089c17219f/msc_20170223_7276.jpg",
   discount: 15,
   from: DateTime.new(2017, 3, 31),
   to: DateTime.new(2017, 4, 30)},
  {name: "Weekday Lunch Set Menu from $8++",
   description: "• Valid daily from Monday to Friday, 11.30 to 14:00
• Cannot be used in conjunction with other promotions, discounts or vouchers
• Prices are subjected to 7% GST and 10% service charge
• Promotion is not valid on Eve of, Public Holidays and Special Occasions
• The management reserves the right to amend the terms and conditions without prior notice",
   image: "https://tabledb.s3.amazonaws.com/hgwlandingpage/promotion/57ea22f1e4b0ac725969a16b/15994772-1139956622768161-7755982885056234841-o_20170125_3958.jpg",
   discount: 30,
   from: DateTime.new(2017, 4, 1),
   to: DateTime.new(2017, 4, 30)},
])

CategoryDish.create!([
 {category_id: 1,
  dish_id: 1
 },
 {category_id: 1,
  dish_id: 2
 },
])

Order.create!([
  {guest_id: 5,
   table_id: 1,
   code: "A001",
   day: Time.zone.local(2017, 4, 19, 14, 00).to_date,
   time_in: 1,
   isConfirm: true,
   discount: 10,
  },
  {guest_id: 5,
   table_id: 4,
   code: "A002",
   day: Time.zone.local(2017, 4, 1, 20, 00).to_date,
   time_in: 2,
   isConfirm: false,
   discount: 0,
  },
  {guest_id: 6,
   table_id: 10,
   code: "A003",
   day: Time.zone.local(2017, 4, 1, 20, 00).to_date,
   time_in: 4,
   isConfirm: false,
   discount: 0,
  }
])

OrderDish.create!([
  {order_id: 1,
   dish_id: 3,
   discount: 0,
   quantity: 1
  },
  {order_id: 1,
   dish_id: 7,
   discount: 0,
   quantity: 1
  },
  {order_id: 1,
   dish_id: 27,
   discount: 0,
   quantity: 1
  },
  {order_id: 1,
   dish_id: 13,
   discount: 0,
   quantity: 1
  },
  {order_id: 2,
   dish_id: 3,
   discount: 0,
   quantity: 1
  },
  {order_id: 3,
   dish_id: 3,
   discount: 0,
   quantity: 1
  },
  {order_id: 2,
   dish_id: 13,
   discount: 0,
   quantity: 1
  },
  {order_id: 2,
   dish_id: 88,
   discount: 0,
   quantity: 1
  },
  {order_id: 3,
   dish_id: 6,
   discount: 0,
   quantity: 1
  },
  {order_id: 3,
   dish_id: 9,
   discount: 0,
   quantity: 1
  },
  {order_id: 2,
   dish_id: 72,
   discount: 0,
   quantity: 1
  },
  {order_id: 1,
   dish_id: 63,
   discount: 0,
   quantity: 1
  },
])

OrderCombo.create!([
  {order_id: 1,
   combo_id: 9,
   quantity: 1
  }
])

Human.create! name: "admin", email: "admin1@123.com",
              password: "123123", password_confirmation: "123123", role: "Admin"
Human.create! name: "admin2", email: "admin2@123.com",
              password: "123123", password_confirmation: "123123", role: "Admin"
Human.create! name: "admin3", email: "admin3@123.com",
              password: "123123", password_confirmation: "123123", role: "Admin"
Human.create! name: "guest", email: "guest@123.com",
              role: "Guest", phoneNum: "01213218307"
Human.create! name: "Foo", email: "guest2@123.com",
              role: "Guest", phoneNum: "01213218307"
Human.create! name: "Hien", email: "hienvu@123.com",
              role: "Guest", phoneNum: "01213218307"

Table.create! capacity: 2, code: "5"
Table.create! capacity: 2, code: "2"
Table.create! capacity: 2, code: "3"
Table.create! capacity: 2, code: "4"
Table.create! capacity: 4, code: "7"
Table.create! capacity: 4, code: "9"
Table.create! capacity: 4, code: "10"
Table.create! capacity: 4, code: "11"
Table.create! capacity: 4, code: "12"
Table.create! capacity: 4, code: "14"
Table.create! capacity: 4, code: "15"
Table.create! capacity: 4, code: "17"
Table.create! capacity: 8, code: "1"
Table.create! capacity: 8, code: "6"
Table.create! capacity: 12, code: "8"
Table.create! capacity: 12, code: "16"
Table.create! capacity: 16, code: "18"
