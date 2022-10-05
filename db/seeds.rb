# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 1234567, category:"chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 7654321, category:"italian"}
domino =  {name: "Domino's Pizza", address: "Beau-Bassin", phone_number: 10023456, category:"japanese"}
cozy =  {name: "Cozy Burger", address: "Phoenix", phone_number: 52365478, category:"french"}
mcdonald =  {name: "Spicy Chicken", address: "St-Pierre", phone_number: 88451236, category:"belgian"}


[dishoom, pizza_east, domino, cozy, mcdonald].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
