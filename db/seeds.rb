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

Flight.delete_all
Flight.create(departure_airport:lgw, departure_date:"2030-12-25", departure_time:"10:00:00", duration: 150, arrival_airport:mad, arrival_date:"2030-12-25",arrival_time: "13:30:00",price:120)
Flight.create(departure_airport:mad, departure_date:"2030-12-26", departure_time:"15:00:00", duration:145, arrival_airport:lgw, arrival_date:"2030-12-26",arrival_time: "16:25:00",price:160)
Flight.create(departure_airport:lgw, departure_date:"2030-12-27", departure_time:"20:40:00", duration: 139, arrival_airport:mad, arrival_date:"2030-12-27",arrival_time: "23:59:00",price:175)
Flight.create(departure_airport:mad, departure_date:"2030-12-28", departure_time:"18:40:00", duration: 140, arrival_airport:lgw, arrival_date:"2030-12-28",arrival_time: "20:00:00",price:210)
Flight.create(departure_airport:mad, departure_date:"2030-12-25", departure_time:"09:05:00", duration:130, arrival_airport:mxp, arrival_date:"2030-12-25",arrival_time: "11:15:00",price:85)
Flight.create(departure_airport:mxp, departure_date:"2030-12-26", departure_time:"06:10:00", duration:140, arrival_airport:mad, arrival_date:"2030-12-26",arrival_time: "08:30:00",price:135)
Flight.create(departure_airport:mad, departure_date:"2030-12-27", departure_time:"17:25:00", duration:130, arrival_airport:mxp, arrival_date:"2030-12-27",arrival_time: "19:35:00",price:100)
Flight.create(departure_airport:mxp, departure_date:"2030-12-28", departure_time:"20:20:00", duration:145, arrival_airport:mad, arrival_date:"2030-12-28",arrival_time: "22:45:00",price:80)
Flight.create(departure_airport:lgw, departure_date:"2030-12-25", departure_time:"18:15:00", duration:520, arrival_airport:del, arrival_date:"2030-12-26",arrival_time: "07:25:00",price:500)
Flight.create(departure_airport:del, departure_date:"2030-12-27", departure_time:"09:25:00", duration:560, arrival_airport:lgw, arrival_date:"2030-12-27",arrival_time: "14:15:00",price:895)
Flight.create(departure_airport:lgw, departure_date:"2030-12-28", departure_time:"18:15:00", duration:520, arrival_airport:del, arrival_date:"2030-12-29",arrival_time: "07:25:00",price:560)
Flight.create(departure_airport:del, departure_date:"2030-12-30", departure_time:"02:40:00", duration:560, arrival_airport:lgw, arrival_date:"2030-12-30",arrival_time: "07:30:00",price:890)

# fix duplicates
