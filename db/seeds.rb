require 'faker'
puts "Emptying database"
Scene.destroy_all
Product.destroy_all


puts "Creating Scenes"

scenes = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_NKtK1dBruouu0o8pn55TN2a2ePSFISPkg53OdfBVq6B6imHU", "https://s-media-cache-ak0.pinimg.com/originals/0b/99/af/0b99af60425069aa76b5f1dde982fbd0.png", "http://cdn.homedsgn.com/wp-content/uploads/2012/10/Home-in-a-Log-Cabin-03.jpg"]

scenes.each do |banner|
  scene = Scene.new(title: Faker::RockBand.name, description: Faker::MostInterestingManInTheWorld.quote)
  scene.banner_url = banner
  scene.save!
end

puts "Creating products"

chairs = [ "http://www.marvelbuilding.com/wp-content/uploads/2012/04/Wooden-Chair-with-Unusual-Legs-Position.jpg", "https://i.pinimg.com/236x/2f/21/af/2f21af4897f5ccf0fcd80f13c22e86bc--wood-chair-design-wood-design-furniture.jpg", "https://i.pinimg.com/736x/1d/9c/58/1d9c58b59bfc940f2626c8767dfcdc17--good-design-wooden-chairs.jpg"]

couches = ["https://s-media-cache-ak0.pinimg.com/originals/26/56/ec/2656ecb69e9144ad1347b112292e7a62.jpg", "https://s-media-cache-ak0.pinimg.com/originals/b3/6d/49/b36d491435cdeb2b406d6ffb10863b80.jpg", "https://s-media-cache-ak0.pinimg.com/originals/ab/fb/63/abfb632789197dbc75cf32f130d9a4ad.jpg"]

bars = ["https://i.pinimg.com/736x/a4/80/1f/a4801f82432e63c0e688f915ea57979e--cool-restaurant-design-cafe-restaurant.jpg", "https://i.pinimg.com/736x/a0/14/58/a014584baaab3d8d6e869a173e742bda--wooden-bar-wooden-crates.jpg", "https://i.pinimg.com/736x/b3/72/f8/b372f8be36186c46eab9652872a41bb7--bagel-bar-reclaimed-wood-bars.jpg"]

tables = ["https://s-media-cache-ak0.pinimg.com/originals/af/29/eb/af29ebfd24ad24fdc925bd53ba27d503.jpg", "http://cdn.trendir.com/wp-content/uploads/old/archives/designer-wood-tables-linteloo-dutch-dining-1.jpg", "https://s-media-cache-ak0.pinimg.com/originals/9a/a3/8c/9aa38c6e14825fbd49120139589e607e.jpg"]

material = ["wood", "metal", "latex", "hardwood", "plastic", "bamboo", "aliminium"]

puts '1'
3.times do
  product = Product.new(name: Faker::Cat.name, material: material.sample, category: "eat", price: rand(50..100), description: Faker::Cat.breed, scene: Scene.all.sample)
  product.photo_urls = chairs
  product.save!
end

puts '2'
3.times do
  product = Product.new(name: Faker::Cat.name, material: material.sample, category: "sleep", price: rand(50..100), description: Faker::Cat.breed, scene: Scene.all.sample)
  product.photo_urls = couches
  product.save!
end

puts '3'
3.times do
  product = Product.new(name: Faker::Cat.name, material: material.sample, category: "living", price: rand(50..100), description: Faker::Cat.breed, scene: Scene.all.sample)
  product.photo_urls = tables
  product.save!
end

puts '4'
3.times do
  product = Product.new(name: Faker::Cat.name, material: material.sample, category: "cook", price: rand(50..100), description: Faker::Cat.breed, scene: Scene.all.sample)
  product.photo_urls = bars
  product.save!
end

puts "Satisfactory seeding"
