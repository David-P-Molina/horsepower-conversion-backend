# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
foot = StandardizedMeasurement.new(name: "Foot", type: "Length", unit_of_measurement: 12)
inch = StandardizedMeasurement.new(name: "Inch", type: "Length", unit_of_measurement: 1)
horsepower = StandardizedMeasurement.new(name: "Horse-Power", type: "Energy", unit_of_measurement: 1)