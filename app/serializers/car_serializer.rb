class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :feature, :photo, :name
end
