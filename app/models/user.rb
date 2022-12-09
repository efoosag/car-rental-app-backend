class User < ApplicationRecord
  has_many :cars
  has_many :rentals, foreign_key: :user_id

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
end
