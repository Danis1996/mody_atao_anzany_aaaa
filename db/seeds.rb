# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Quarter.destroy_all
User.destroy_all
Club.destroy_all
Recrutement.destroy_all
Request.destroy_all

	20.times do
        Quarter.create(zip_code: Faker::Address.zip_code,
                    name: Faker::Address.street_name
                    )
    end

puts "20 seed for Quarter created succesfully with 4 attributs"

    10.times do
        User.create(email: Faker::Internet.email,
                    password: "123456", quarter_id: rand(1..20))
    end

puts "10 seed for user created succesfully with 2 attributs"

    for user in (1..5)
        Club.create(user_id: user, quarter_id: rand(1..20))
    end

puts "10 seed for Club created succesfully with attribut user_id and quarter_id"

    20.times do
    	a = 21
    	date = "#{a}/09/19"
        Recrutement.create(content: Faker::Movies::Hobbit.character,
                                deadline: date, club_id: rand(1..5))
        a +=1
    end

puts "20 seed for Recrutement created succesfully with 2 attributs"

    for user in (1..10)
        Request.create(user_id: user)
    end

puts "10 seed for Request created succesfully with attribut user_id "

    

