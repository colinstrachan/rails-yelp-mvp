# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Starting seeding process..."

puts "Cleaning database!"

Restaurant.destroy_all

puts "Creating new Restaurants"

10.times do
  restaurant = {
    name: Faker::Food.ingredient,
    address: Faker::Address.street_address,
    category: CATEGORIES.sample(1).first,
    phone_number: Faker::Number.number(10)
  }
   Restaurant.create(restaurant)
end

puts "Finished seeding process!"
