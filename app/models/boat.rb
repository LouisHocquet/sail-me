class Boat < ApplicationRecord
  belongs_to :user

  validates :type, :brand, :location, :length, :price_per_day, :capacity, :building_year, :engine_power, presence: true
  validates :type, acceptance: { accept: ['motorboat', 'sailboat']}
  validates :capacity, numericality: {greater_than: 0}
end
