# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  p = Party.create(
  title: Faker::Name.title,
  description: Faker::Lorem.sentence(3),
  date: Faker::Date.between(2.days.ago, Date.today),
  time: Time.now
  )
  5.times do
    u = p.users.create(
    name: Faker::Name.name,
    number: Faker::PhoneNumber.phone_number
      )
    i = Invitation.where(user_id: u.id, party_id: p.id).first
    i.host = [true,false].sample
    i.save
  end
  p.items.create(
      name: Faker::App.name,
      price: Faker::Commerce.price
    )
end