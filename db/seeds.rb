# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.delete_all
lgw = Airport.create(name:"London Gatwick", code:"LGW")
mad = Airport.create(name:"Madrid", code:"MAD")
mxp = Airport.create(name:"Milan Malpensa", code:"MXP")
del  = Airport.create(name:"New Delhi", code:"DEL")
sjo = Airport.create(name:"San Jose", code:"SJO")
nrt = Airport.create(name:"Tokyo Narita", code:"NRT")


Flight.create(departure_airport: lgw, departure_time, arrival_airport:, arrival_time, departure)

