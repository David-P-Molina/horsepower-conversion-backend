class ConversionSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :user_id, :username, :hp_quantity, :animal_conversion_quantity
end
