class UserSerializer
  include JSONAPI::Serializer
  attributes :username, :id, :conversions
end
