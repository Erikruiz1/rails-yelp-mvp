# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London', phone_number: 775892567, category: "belgian" }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London', phone_number: 675896767, category: "french" }
burgundy = { name: 'Burgundy', address: '6 ChoherrStr, Munich', phone_number: 675896767, category: "french" }
pizza_west = { name: 'Pizza West', address: 'Phily Avenue, Philadephia', phone_number: 875892567, category: "chinese" }
pizza_san_andreas = { name: 'Pizza San Andreas', address: '4 GTA, LA', phone_number: 675854567, category: "french" }

[dishoom, pizza_east, burgundy, pizza_west, pizza_san_andreas].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Done!'
