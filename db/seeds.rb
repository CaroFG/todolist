# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Card.destroy_all
Item.destroy_all

5.times do 

	user = User.create!(
		email: Faker::Internet.email,
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		password: Faker::Internet.password)

	puts "user created"

	card = Card.create!(
		title: Faker::Lorem.sentence,
		user: user)

	puts "card created"

	item = Item.create!(
		name: Faker::Lorem.sentence,
		card: card)

	puts "item created"

end