# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "=== Cleaning database... ==="
Boat.destroy_all
puts "=== Database clean! ==="

puts "=== Adding boats... ==="
file = URI.open('https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1).photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat1 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat1.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat2 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat2.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat3 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat3.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat4 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat4.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat5 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat5.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat6 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat6.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat7 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat7.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat8 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat8.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

# boat9 = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
# boat9.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')

puts "=== Boats added! ==="
