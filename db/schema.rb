# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_09_191049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversions", force: :cascade do |t|
    t.string "name"
    t.float "measure_1_quantity"
    t.float "measure_2_quantity"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_conversions_on_user_id"
  end

  create_table "measurement_conversions", force: :cascade do |t|
    t.bigint "measurement_id", null: false
    t.bigint "conversion_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversion_id"], name: "index_measurement_conversions_on_conversion_id"
    t.index ["measurement_id"], name: "index_measurement_conversions_on_measurement_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.string "name"
    t.float "animal_power_to_hp"
    t.float "hp_equivalent"
    t.string "source"
    t.boolean "standard"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "conversions", "users", on_delete: :cascade
  add_foreign_key "measurement_conversions", "conversions", on_delete: :cascade
  add_foreign_key "measurement_conversions", "measurements", on_delete: :cascade
end
