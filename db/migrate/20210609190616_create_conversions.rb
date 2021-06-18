class CreateConversions < ActiveRecord::Migration[6.1]
  def change
    create_table :conversions do |t|
      t.string :name
      t.float :hp_quantity
      t.float :animal_conversion_quantity
      t.references :user, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
