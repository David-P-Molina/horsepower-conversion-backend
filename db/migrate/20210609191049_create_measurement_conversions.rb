class CreateMeasurementConversions < ActiveRecord::Migration[6.1]
  def change
    create_table :measurement_conversions do |t|
      t.references :measurement, null: false, foreign_key: {on_delete: :cascade}
      t.references :conversion, null: false, foreign_key: {on_delete: :cascade}
      t.string :name
      t.timestamps
    end
  end
end
