class CreateMeasurementConversions < ActiveRecord::Migration[6.1]
  def change
    create_table :measurement_conversions do |t|
      t.references :measurements, null: false, foreign_key: {on_delete: :cascade}
      t.references :conversions, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
