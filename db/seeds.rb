# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Standard Measurements
User.find_or_create_by(username: "test")
# foot_to_inch = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 12, measure_2_quantity: 11) 
# foot = Measurement.find_or_create_by(name: "Foot", kind: "Length", hp_value: 12, standard: true)
# inch = Measurement.find_or_create_by(name: "Inch", kind: "Length", hp_value: 1, standard: true)
# watt = Measurement.find_or_create_by(name: "Watt", hp_value: 1, standard: true)
horsepower = Measurement.find_or_create_by(name: "Horse-Power (mechanical)", hp_value: 1, standard: true)
#Strange Measurements
oxpower = Measurement.find_or_create_by(name: "Ox-Power", hp_value: 0.576, source: "https://www.sjsu.edu/faculty/watkins/animalpower.htm", standard: false)
mulepower = Measurement.find_or_create_by(name: "Mule-Power", hp_value: 0.432, source: "https://www.sjsu.edu/faculty/watkins/animalpower.htm", standard: false)
donkeypower = Measurement.find_or_create_by(name: "Donkey-Power", hp_value: 0.216, source: "https://www.sjsu.edu/faculty/watkins/animalpower.htm", standard: false)
manpower = Measurement.find_or_create_by(name: "Man-Power", hp_value: 0.090, source: "https://www.sjsu.edu/faculty/watkins/animalpower.htm", standard: false)
squirrelpower = Measurement.find_or_create_by(name: "Squirrel-Power", hp_value: 0.0007492446677193555, source: "https://eagletalon.net/squirrelpower/", standard: false)
duckpower = Measurement.find_or_create_by(name: "Duck-Power", hp_value: 0.00333333, source: "https://www.reddit.com/r/theydidthemath/comments/4oyzjm/converting_horsepower_to_duckpower/", standard: false)
lionpower = Measurement.find_or_create_by(name: "Lion-Power", hp_value: 1.507, source: "https://www.reddit.com/r/theydidthemath/comments/5xkxf0/request_how_much_horsepower_can_a_lion_generate/", standard: false)
#conversions
#horsepower_to_watt = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 1, measure_2_quantity: 745.7)
horsepower_to_oxpower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 1, measurement_id: 2)
horsepower_to_mulepower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 2, measurement_id: 3)
horsepower_to_donkeypower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 3, measurement_id: 4)
horsepower_to_manpower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 4, measurement_id: 5)
horsepower_to_squirrelpower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 5, measurement_id: 6)
horsepower_to_duckpower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 6, measurement_id: 7)
horsepower_to_lionpower = Conversion.find_or_create_by(user_id: 1, measure_1_quantity: 150)
MeasurementConversion.find_or_create_by(conversion_id: 7, measurement_id: 8)