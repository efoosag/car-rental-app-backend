class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :password
end
