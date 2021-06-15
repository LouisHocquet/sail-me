class User < ApplicationRecord
  has_many :bookings
  has_many :boats, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
