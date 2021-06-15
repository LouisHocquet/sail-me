# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Boat.destroy_all

file = URI.open('https://res.cloudinary.com/ddcrlcczl/image/upload/v1623744918/cclxirgjy14of22c8er5.jpg')
boat = Boat.create(category:"sailboat",brand:"X",location:"Paris", length:45,price_per_day:65,capacity:6, building_year:2010, engine_power: 250, user_id: 1)
boat.photo.attach(io: file, filename: 'X.jpg', content_type: 'image/jpg')
