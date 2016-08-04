# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  User.create(
    name: Faker::Name.name,
    nim: Faker::Code.ean,
    major: Major.offset(rand(Major.count)).first,
    birth: Faker::Date.between_except(20.year.ago, 18.year.ago, Date.today),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone
  )
end
