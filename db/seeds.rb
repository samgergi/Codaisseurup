# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.delete_all
Theme.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Themes
modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

count = Theme.all.length
puts "#{count} Themes were created."

# Users
sam = User.create(email: "sam@hotmail.com", password:  "123456")
miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

count = User.all.length
puts "#{count} Users were created."

event1 = Event.create(
         name: "Amsterdam City Wide",
         description: "Best outdoor party in Amsterdam",
         location: "Everywhere in the city",
         price: 5,
         capacity: 10,
         includes_food: true,
         includes_drink: true,
         starts_at: DateTime.new(2018,02,03),
         ends_at: DateTime.new(2019,05,07),
         active: true,
         user: wouter,
         themes: [modern_and_minimal]
         )

event2 = Event.create(
         name: "Game Night",
         description: "Fun and Competative",
         location: "Mehdi en Marlou's Casa",
         price: 0,
         capacity: 10,
         includes_food: true,
         includes_drink: true,
         starts_at: DateTime.new(2018,02,03),
         ends_at: DateTime.new(2019,05,07),
         active: true,
         user: sam,
         themes: [a_mans_touch]
         )

event3 = Event.create(
         name: "Clothes swap",
         description: "Inspiring",
         location: "Fashion Institute",
         price: 0,
         capacity: 20,
         includes_food: true,
         includes_drink: true,
         starts_at: DateTime.new(2018,02,04),
         ends_at: DateTime.new(2019,05,05),
         active: true,
         user: miriam,
         themes: [tempting_terrace, white_washed]
         )

count = Event.all.length
puts "#{count} Events were created."

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/samge/image/upload/v1499347212/download1_deuhff.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/samge/image/upload/v1499347178/download3_hflm6p.jpg", event: event2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/samge/image/upload/v1499347174/download2_fytaz5.jpg", event: event3)

count = Photo.all.length
puts "#{count} Photo were created."
