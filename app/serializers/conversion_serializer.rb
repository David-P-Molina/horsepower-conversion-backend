class ConversionSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :user_id, :username, :measure_1_quantity, :measure_2_quantity
end
