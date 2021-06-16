class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :user
  has_one_attached :photo

  validates :title, :category, :brand, :location, :length, :price_per_day, :capacity, :building_year, presence: true
  validates :category, acceptance: { accept: ['🚤 motorboat', "⛵ sailboat"] }
  validates :capacity, :length, :price_per_day, :building_year, numericality: { greater_than: 0 }
end
