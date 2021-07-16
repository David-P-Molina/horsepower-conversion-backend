class MeasurementSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :animal_power_to_hp, :hp_equivalent, :source, :standard #, :conversions
end
