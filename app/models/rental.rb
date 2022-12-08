class Rental < ApplicationRecord
  # belongs_to :user

   validates :rent_date, presence: true
    validates :number_of_days, presence: true
    validates :location, presence: true
end
