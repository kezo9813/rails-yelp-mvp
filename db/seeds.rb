# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0526737945", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0426737945", category: "french" }
shlagland = { name: "shlagland", address: "96 boulevard shlagorovitch", phone_number: "0126737945", category: "french" }
sushiparty = { name: "sushiparty", address: "73 boulevard massena", phone_number: "0326737945", category: "french" }
nasserslife = { name: "nasserslife", address: "138 rue de la baudericourt", phone_number: "0526737945", category: "french" }

[ dishoom, pizza_east, shlagland, sushiparty, nasserslife].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"