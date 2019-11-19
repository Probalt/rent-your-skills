# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Course.destroy_all

puts 'Creating courses...'
skate = Course.create!(title: 'Cours de skate', description: 'Je compte faire deux heures de skate dimanche sur les quais et je propose de donner des cours pendant 1h', price: 3, duration: 60, location: 'Bordeaux, Quais des Chartrons', date: Time.now )
cook = Course.create!(title: 'Cours de cuisine', description: 'Propose une initiation à la cuisin moléculaire', price: 4, duration: 120, location: 'Bordeaux, Quai Richelieu', date: Time.now )
vaisselle = Course.create!(title: 'Faire sa propre lessive', description: 'Je vais faire ma lessive du mois, je vous propose de vous apprendre par la même occasion comment faire', price: 2, duration: 30, location: 'Bordeaux, Rue Sainte-Catherine', date: Time.now )

puts 'Finished!'
