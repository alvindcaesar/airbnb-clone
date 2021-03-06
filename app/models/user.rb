class User < ApplicationRecord
  has_many :rooms
  has_one_attached :avatar
  has_many :bookings
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
end
