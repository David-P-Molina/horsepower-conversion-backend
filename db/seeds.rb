# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Standard Measurements
User.find_or_create_by(username: "test")
foot_to_inch = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 12, measure_2_quantity: 11) 
horsepower_to_watt = Conversion.find_or_create_by(measure_1_quantity: 1, measure_2_quantity: 745.7)
foot = Measurement.find_or_create_by(name: "Foot", kind: "Length", unit_of_measurement: 12, standard: true)
inch = Measurement.find_or_create_by(name: "Inch", kind: "Length", unit_of_measurement: 1, standard: true)
watt = Measurement.find_or_create_by(name: "Watt", kind: "Power", unit_of_measurement: 1, standard: true)
horsepower = Measurement.find_or_create_by(name: "Horse-Power (mechanical)", kind: "Power", unit_of_measurement: 1, standard: true)
#Strange Measurements
squirrelpower = Measurement.find_or_create_by(name: "Squirrel-Power", kind: "Power", unit_of_measurement: 0.0007492446677193555, source: "https://eagletalon.net/squirrelpower/", standard: false)
duckpower = Measurement.find_or_create_by(name: "Duck-Power", kind: "Power", unit_of_measurement: 0.00333333, source: "https://www.reddit.com/r/theydidthemath/comments/4oyzjm/converting_horsepower_to_duckpower/", standard: false)