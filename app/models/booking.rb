class Booking < ApplicationRecord
  # belongs_to :user, :boat
  # validates :user, :boat, uniqueness: true --> pour qu'il n'y ait qu'un user pour une booking
  validates :start_date, :end_date, :accepted, presence: true
end
