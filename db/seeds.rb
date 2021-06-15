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
User.destroy_all
Boat.destroy_all
Booking.destroy_all

puts "=== Database clean! ==="

puts "=== Adding users... ==="
user1 = User.create(first_name: 'Ben', last_name: 'Moro', email: 'azerty@com', password: 'azerty')
user2 = User.create(first_name: 'Tatoune', last_name: 'Ajar', email: 'azert@com', password: 'azerty')
user3 = User.create(first_name: 'Robinho', last_name: 'Daen', email: 'azery@com', password: 'azerty')
user4 = User.create(first_name: 'Loulou', last_name: 'Ok', email: 'azey@com', password: 'azerty')
puts "=== #{User.count} users added! ==="


puts "=== Adding boats... ==="
boat1 = Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Ajaccio", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: user1.id)
boat1.photo.attach(io: URI.open('https://images.unsplash.com/photo-1526369956368-fead97fe0f28?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxzYWlsYm9hdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
boat1.save
boat2 = Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Marseille", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: user2.id).photo.attach(io: URI.open('https://images.unsplash.com/photo-1613578699399-82ae71be53a3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FpbGJvYXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
# boat2.save
boat3 = Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Lyon", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: user3.id).photo.attach(io: URI.open('https://images.unsplash.com/photo-1561562176-d1d598e49589?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHNhaWxib2F0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
# boat3.save
boat4 = Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Toulon", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: user4.id).photo.attach(io: URI.open('https://images.unsplash.com/photo-1534296264129-b318f8140c27?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHNhaWxib2F0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
# boat4.save
puts "=== #{Boat.count} boats added! ==="
puts "user #{user1}"
puts "boat #{boat1}"

puts "=== Adding bookings... ==="
Booking.create(start_date: Date.today, end_date: Date.today + 7, user:  user1, boat: boat2)
Booking.create(start_date: Date.today, end_date: Date.today + 7, user:  user2, boat: boat3)
Booking.create(start_date: Date.today, end_date: Date.today + 7, user:  user3, boat: boat4)
Booking.create(start_date: Date.today, end_date: Date.today + 7, user:  user4, boat: boat1)
puts "=== #{Booking.count} bookings added! ==="
