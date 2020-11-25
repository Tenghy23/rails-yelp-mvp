# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone)
  restaurant.category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant.save
  puts "saved restaurant instance!"
    2.times do
      review = Review.new(content: Faker::Restaurant.description)
      review.rating = [0, 1, 2, 3, 4, 5].sample
      review.restaurant = restaurant
      review.save
      puts "saved review instance!"
    end
end