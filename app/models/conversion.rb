class Conversion < ApplicationRecord
    belongs_to :user
    has_many :measurement_conversions
    has_many :measurements, through: :measurement_conversions
end
