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
User.create(first_name: 'Ben', last_name: 'Moro', email: 'azerty@com', password: 'azerty')
User.create(first_name: 'Tatoune', last_name: 'Ajar', email: 'azert@com', password: 'azerty')
User.create(first_name: 'Robinho', last_name: 'Daen', email: 'azery@com', password: 'azerty')
User.create(first_name: 'Loulou', last_name: 'Ok', email: 'azey@com', password: 'azerty')
puts "=== #{User.count} users added! ==="


puts "=== Adding boats... ==="
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Ajaccio", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 1).photo.attach(io: URI.open('https://images.unsplash.com/photo-1526369956368-fead97fe0f28?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxzYWlsYm9hdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Marseille", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 2).photo.attach(io: URI.open('https://images.unsplash.com/photo-1613578699399-82ae71be53a3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FpbGJvYXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Lyon", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 3).photo.attach(io: URI.open('https://images.unsplash.com/photo-1561562176-d1d598e49589?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHNhaWxib2F0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Toulon", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 4).photo.attach(io: URI.open('https://images.unsplash.com/photo-1534296264129-b318f8140c27?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHNhaWxib2F0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Ajaccio", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 1).photo.attach(io: URI.open('https://images.unsplash.com/photo-1526369956368-fead97fe0f28?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxzYWlsYm9hdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Marseille", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 2).photo.attach(io: URI.open('https://images.unsplash.com/photo-1613578699399-82ae71be53a3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FpbGJvYXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Lyon", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 3).photo.attach(io: URI.open('https://images.unsplash.com/photo-1561562176-d1d598e49589?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHNhaWxib2F0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
Boat.create(title: "best boat ever had",category:"sailboat",brand:"X",location:"Toulon", length:45,price_per_day:65,capacity:6, building_year:2010, user_id: 4).photo.attach(io: URI.open('https://images.unsplash.com/photo-1534296264129-b318f8140c27?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHNhaWxib2F0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'), filename: 'X.jpg', content_type: 'image/jpg')
puts "=== #{Boat.count} boats added! ==="

puts "=== Adding bookings... ==="
Booking.create(start_date: Date.today, end_date: Date.today + 7, user_id:  1, boat_id: 2)
Booking.create(start_date: Date.today, end_date: Date.today + 7, user_id:  2, boat_id: 3)
Booking.create(start_date: Date.today, end_date: Date.today + 7, user_id:  3, boat_id: 4)
Booking.create(start_date: Date.today, end_date: Date.today + 7, user_id:  4, boat_id: 1)
puts "=== #{Booking.count} bookings added! ==="

