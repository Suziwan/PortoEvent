# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Attendance.destroy_all
User.destroy_all
Event.destroy_all

5.times do
  User.create!(email: Faker::Internet.email(domain: 'yopmail.com'),
              encrypted_password: Faker::Internet.password(min_length: 6, max_length: 10),
              description: Faker::Lorem.paragraph,
              first_name: Faker::Name.first_name, 
              last_name: Faker::Name.last_name)
end

5.times do
  Event.create!(start_date: Faker::Date.between(from: 1.year.ago, to: 1.year.from_now),
                  duration: rand(1..12) * 10,
                  title: Faker::Hobby.activity,
                  description: Faker::Lorem.paragraph,
                  price: rand(1..5) * 5,
                  location: Faker::Address.street_address)
end

5.times do
  Attendance.create!(stripe_customer_id: Faker::Finance.credit_card,
                    user: User.all.sample,
                    event: Event.all.sample)
end