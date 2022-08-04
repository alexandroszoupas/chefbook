# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

loop_num = 10

loop_num.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.first_name,
              email: Faker::Internet.email,
              password: Faker::Internet.password(min_length: 10, max_length: 20),
              address: Faker::Address.full_address,
              phone_number: Faker::PhoneNumber)
end

(1..loop_num).to_a.sample(2).each do |user_id|
  rand(5).times do
    Posting.create(user_id: user_id,
                   name: Faker::Name.first_name,
                   price: rand(50..200),
                   cuisine: Faker::Food.ethnic_category,
                   bio: Faker::Quote.yoda)
  end
end
