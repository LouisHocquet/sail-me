class Boat < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  validates :category, :brand, :location, :length, :price_per_day, :capacity, :building_year, :engine_power, presence: true
  validates :category, acceptance: { accept: ["motorboat", "sailboat"]}
  validates :capacity, numericality: { greater_than: 0 }
end
