class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :photo
  has_many :cars
end
