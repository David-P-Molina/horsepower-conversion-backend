class MeasurementConversion < ApplicationRecord
  belongs_to :measurement
  belongs_to :conversion
end
