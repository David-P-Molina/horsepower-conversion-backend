class ConversionSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :user_id, :username, :hp_quantity, :animal_type, :animal_conversion_quantity #, :measurement_conversions
end
