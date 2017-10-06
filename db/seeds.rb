# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do

Venue.create(
vtype: 'Date Night',
region: 'Wan Chai',
name: Faker::Company.name,
desc: Faker::Lorem.sentence,
exists: '1',
latitude: Faker::Address.latitude,
longitude: Faker::Address.longitude
)

end

5.times do

  Venue.create(
  vtype: 'Watching Sports',
  region: 'Wan Chai',
  name: Faker::Company.name,
  desc: Faker::Lorem.sentence,
  exists: '1',
  latitude: Faker::Address.latitude,
  longitude:Faker::Address.longitude
  )

end


5.times do

  Venue.create(
  vtype: 'After Work Drinks',
  region: 'Central',
  name: Faker::Company.name,
  desc: Faker::Lorem.sentence,
  exists: '1',
  latitude: Faker::Address.latitude,
  longitude:Faker::Address.longitude
  )

end


5.times do

  Venue.create(
  vtype: 'Dancing and Drinking',
  region: 'TST',
  name: Faker::Company.name,
  desc: Faker::Lorem.sentence,
  exists: '1',
  latitude: Faker::Address.latitude,
  longitude:Faker::Address.longitude
  )

end
