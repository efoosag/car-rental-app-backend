class User < ApplicationRecord
  has_many :rentals

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
end
