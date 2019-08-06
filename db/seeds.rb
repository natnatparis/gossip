# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all
User.destroy_all
MyGossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.matz, email: Faker::Internet.email, age: rand(15..40), city: City.all.sample)
end

20.times do
  MyGossip.create(title: Faker::Quote.singular_siegler, content: Faker::Quote.matz, user: User.all.sample)
end

10.times do
  Tag.create(title: Faker::TvShows::SouthPark.character)
end

80.times do
  GossipTag.create(my_gossip: MyGossip.all.sample, tag: Tag.all.sample)
end

20.times do
    PrivateMessage.create(sender: User.all.sample, receiver: User.all.sample)
  end
