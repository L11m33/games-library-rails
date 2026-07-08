class User < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :rented_games, through: :rentals, source: :game
end
