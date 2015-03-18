# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(title: 'Automobiles', description: Faker::Lorem.sentence)
Category.create(title: 'Appliances', description: Faker::Lorem.sentence)
Category.create(title: 'Furniture', description: Faker::Lorem.sentence)
Category.create(title: 'Bikes', description: Faker::Lorem.sentence)

User.create(name: 'Bill', password: 'password',
			password_confirmation: 'password',
			email: 'fake@fake.com',
			phone: Faker::PhoneNumber.phone_number)

50.times do
  User.create!(name: Faker::Name.name,
              password: 'fake',
              password_confirmation: 'fake',
              email: Faker::Internet.email,
              phone: Faker::PhoneNumber.phone_number)
end

100.times do
  Post.create(user_id: rand(1..50),
              category_id: rand(1..4),
              name: Faker::Company.bs,
              description: Faker::Lorem.paragraph,
              price: rand(1..1000),
              location: Faker::Address.city)
end
