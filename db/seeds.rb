# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Standard Measurements
foot = StandardizedMeasurement.new(name: "Foot", type: "Length", unit_of_measurement: 12)
inch = StandardizedMeasurement.new(name: "Inch", type: "Length", unit_of_measurement: 1)
horsepower = StandardizedMeasurement.new(name: "Horse-Power", type: "Energy", unit_of_measurement: 1)
#Strange Measurements
squirrelpower = StangeMeasurement.new(name: "Squirrel-Power", type: "Energy", unit_of_measurement: .0007492446677193555, source: "https://eagletalon.net/squirrelpower/")
duckpower = StangeMeasurement.new(name: "Duck-Power", type: "Energy", unit_of_measurement: .00333333, source: "https://www.reddit.com/r/theydidthemath/comments/4oyzjm/converting_horsepower_to_duckpower/")