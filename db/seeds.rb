# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do

Venue.create(
vtype: ['Date Night','Watching Sports','After Work Drinks', 'Dancing and Drinking',' Relaxing with Friends', 'Club Night'].sample,
region: ['Wan Chai','TST','Central'].sample,
name: Faker::Company.name,
desc: Faker::Lorem.sentence,
exists: '1',
latitude: Faker::Address.latitude,
longitude: Faker::Address.longitude
)

end

200.times do |n|

@starttime = Faker::Time.forward(23, :evening)

newoffer = Offer.create(
start: @starttime,
end:  @starttime + rand(2..6).hours,
offertype: ['2-4-1','Percentage Off','Discounts'].sample,
desc: Faker::Lorem.sentence,

)

@numberofvenues = Venue.count

newoffer.deals.create(
venue_id: rand(1..@numberofvenues),
offer_id: newoffer.id
)

newoffer.save!

end
