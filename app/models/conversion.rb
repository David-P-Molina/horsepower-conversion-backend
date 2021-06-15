class Conversion < ApplicationRecord
    belongs_to :user
    has_many :measurement_conversions
    has_many :measurements, through: :measurement_conversions
    #method that checks if a measurement is standard
    #if measurement is not standard converts measurement into hpvalue
    #if measurement is standard do nothing
    #method that takes hp value and converts quantity 2 into correct number
    #method that assigns the value to measurement_2_quantity
end
