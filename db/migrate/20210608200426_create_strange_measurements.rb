class CreateStrangeMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :strange_measurements do |t|
      t.string :name
      t.string :type
      t.float :unit_of_measurement
      t.string :source

      t.timestamps
    end
  end
end
