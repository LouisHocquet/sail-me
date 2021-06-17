class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :boats, through: :bookings
  has_many :boats, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
end
