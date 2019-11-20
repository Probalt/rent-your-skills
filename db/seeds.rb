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
User.create!(email: "joe@gmail.com", password: "azerty")

puts 'Creating courses...'
Course.create!(title: 'Cours de skate', description: 'Je compte faire deux heures de skate dimanche sur les quais et je propose de donner des cours pendant 1h', price: 3, duration: 60, location: 'Bordeaux, Quais des Chartrons', date: Time.now, user: User.first, image_url: "https://images.unsplash.com/photo-1506411393232-79727bc447af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" )
Course.create!(title: 'Cours de cuisine', description: 'Propose une initiation à la cuisin moléculaire', price: 4, duration: 120, location: 'Bordeaux, Quai Richelieu', date: Time.now, user: User.first, image_url: "https://images.unsplash.com/photo-1556910103-1c02745aae4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )
Course.create!(title: 'Faire sa propre lessive', description: 'Je vais faire ma lessive du mois, je vous propose de vous apprendre par la même occasion comment faire', price: 2, duration: 30, location: 'Bordeaux, Rue Sainte-Catherine', date: Time.now, user: User.first, image_url: "https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg" )

puts 'Creating bookings...'
Booking.create!(user: User.first, course: Course.first)
Booking.create!(user: User.first, course: Course.last)

puts 'Finished!'
