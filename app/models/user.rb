class User < ApplicationRecord
  has_many :cars
  
  validates :email, presence: true
  validates :password, presence: true
end
