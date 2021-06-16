class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.string :name
      t.float :animal_power_to_hp
      t.float :hp_equivalent
      t.string :source
      t.boolean :standard

      t.timestamps
    end
  end
end
