# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Scene.destroy_all
Product.destroy_all

5.times do
  Scene.create(banner: "https://unsplash.it/1000/700/?random")
end

10.times do
  Product.create(name: "ninou", description: "A papillon", price: rand(100), scene: Scene.all.sample)
end
