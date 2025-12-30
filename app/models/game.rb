class Game < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users_who_rented, through: :rentals, source: :user
end
