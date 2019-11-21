# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Booking.destroy_all
User.destroy_all
Course.destroy_all

puts 'Creating user joe'
User.create!(email: "joe@gmail.com", password: "azerty", username: "toto", avatar: "https://img.icons8.com/color/1600/avatar.png")

puts 'Finished!'
