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

User.create!(email: "joe@gmail.com", password: "azerty", username: "jojo", avatar: "https://img.icons8.com/color/1600/avatar.png")
Course.create!(title: 'Learn how to skate', description: 'I will practice 2 hours on sunday and I can teach a few people for one hour', participants: 10, price: 3, duration: 60, address: 'Bordeaux, Quais des Chartrons', date: Time.now, user: User.first, photo: "https://images.unsplash.com/photo-1506411393232-79727bc447af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80(54 kB)
https://images.unsplash.com/photo-1506411393232-79727bc447af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80
" )
Course.create!(title: 'Cooking class', description: 'I can show you guys how to cook french specialties like ratatouille', participants: 1, price: 4, duration: 120, address: 'Bordeaux, Quai Richelieu', date: Time.now, user: User.first, photo: "https://images.unsplash.com/photo-1556910103-1c02745aae4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80(207 kB)
https://images.unsplash.com/photo-1556910103-1c02745aae4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80
" )
Course.create!(title: 'Eco laundry', description: 'I do myself my laundry prodcuts each month. I am running out of it, and am planning on making myself another pot. Anyone welcome to come and see how it is done! Very simple', participants: 8, price: 2, duration: 30, address: 'Bordeaux, Rue Sainte-Catherine', date: Time.now, user: User.first, photo: "https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg(123 kB)
https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg
" )
Course.create!(title: 'Salsa Dance', description: 'I am a salsa fan and I offer you some tips on Saturday', participants: 4, price: 2, duration: 30, address: 'Bordeaux, Rue Sainte-Catherine', date: Time.now, user: User.first, photo: "https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg(123 kB)
https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg
" )
Course.create!(title: 'Guitar basics', description: 'Learn with me few easy songs at the guitar', participants: 2, price: 5, duration: 60, address: 'Bordeaux, Rue Sainte-Catherine', date: Time.now, user: User.first, photo: "https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg(123 kB)
https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg
" )
Course.create!(title: 'Photography class', description: 'Learn with me how to use a Nikon camera', participants: 2, price: 10, duration: 65, address: 'Bordeaux, Rue Sainte-Catherine', date: Time.now, user: User.first, photo: "https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg(123 kB)
https://cdn.pixabay.com/photo/2017/08/06/09/14/people-2590564_960_720.jpg
" )

puts 'Finished!'

