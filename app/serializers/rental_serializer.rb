class RentalSerializer < ActiveModel::Serializer
  attributes :id, :car_brand, :rent_date, :number_of_days, :location
end
