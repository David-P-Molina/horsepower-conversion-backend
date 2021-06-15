class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.string :name
      t.float :hp_value
      t.string :source
      t.boolean :standard

      t.timestamps
    end
  end
end
