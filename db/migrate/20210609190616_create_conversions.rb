class CreateConversions < ActiveRecord::Migration[6.1]
  def change
    create_table :conversions do |t|
      t.float :measure_1_quantity
      t.float :measure_2_quantity
      t.references :user, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
