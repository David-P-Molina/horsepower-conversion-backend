class Measurement < ApplicationRecord
    has_many :measurement_conversions
    has_many :conversions, through: :measurement_conversions
end
