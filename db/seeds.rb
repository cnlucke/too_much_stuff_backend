# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



image_names = ["monster", "monster2", "monster3", "monster4", "donut", "green_sock", "horse", "lollipop", "pencil", "record", "red_car", "taco", "tennis_ball", "plant", "lipstick", "alien", "bleach", "california_raison", "capri_sun", "charlie_brown", "cockroach", "comic_book_guy", "forest_gump", "grimace", "hatchet", "ice_pop", "money", "mr_rush", "mrs_piggy", "onion", "pizza", "pepto", "puppy", "purple_crystal", "ranch", "sidekick", "skull", "spinner", "spork", "uno" ]

image_names.each do |item|
  Item.find_or_create_by(name: item, src: "http://localhost:3000/assets/#{item}.png")
end

user_names = ["Sam", "Alex", "Joshua", "Logan", "Matthew", "Samantha", "Amanda", "Robin", "Amber", "Hailey", "Eleanor", "Emily"]

user_names.each do |user|
  User.create(username: user, password: "password")
end
