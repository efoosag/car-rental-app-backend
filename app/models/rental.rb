class Rental < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :rent_date, presence: true
  validates :number_of_days, presence: true
  validates :location, presence: true
end
