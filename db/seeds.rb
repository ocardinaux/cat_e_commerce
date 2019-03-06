# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    5.times do
    User.create(email: Faker::Internet.email, password: "mypassword", password_confirmation: "mypassword")
    end
    
    20.times do
    Item.create(title: Faker::Name.middle_name,
                description: Faker::Lorem.paragraph,
                price: rand(1..100),
                image_url: Faker::LoremFlickr.image)
    end