# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Deleting leaders data'

Leader.delete_all

puts 'Seeding leaders data'

10.times do
  Leader.create(
    name: Faker::Name.unique.name,
    wins: rand(0..50),
    losses: rand(0..50),
    accuracy: rand(0..100)
  )
end

puts 'Done 👌'
