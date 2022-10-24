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
Flight.create(departure_airport:lgw, departure_time:"2030-12-25 10:00:00", duration: 150, arrival_airport:mad, arrival_time:"2030-12-25 13:30:00",price:120)
Flight.create(departure_airport:mad, departure_time:"2030-12-26 15:00:00", duration:145, arrival_airport:lgw, arrival_time:"2030-12-26 16:25:00",price:160)
Flight.create(departure_airport:lgw, departure_time:"2030-12-27 20:40:00", duration: 139, arrival_airport:mad, arrival_time:"2030-12-27 23:59:00",price:175)
Flight.create(departure_airport:mad, departure_time:"2030-12-28 18:40:00", duration: 140, arrival_airport:lgw, arrival_time:"2030-12-28 20:00:00",price:210)

Flight.create(departure_airport:mad, departure_time:"2030-12-25 09:05:00", duration:130, arrival_airport:mxp, arrival_time:"2030-12-25 11:15:00",price:85)
Flight.create(departure_airport:mxp, departure_time:"2030-12-26 06:10:00", duration:140, arrival_airport:mad, arrival_time:"2030-12-26 08:30:00",price:135)
Flight.create(departure_airport:mad, departure_time:"2030-12-27 17:25:00", duration:130, arrival_airport:mxp, arrival_time:"2030-12-27 19:35:00",price:100)
Flight.create(departure_airport:mxp, departure_time:"2030-12-28 20:20:00", duration:145, arrival_airport:mad, arrival_time:"2030-12-28 22:45:00",price:80)


Flight.create(departure_airport:lgw, departure_time:"2030-12-25 18:15:00", duration:520, arrival_airport:del, arrival_time:"2030-12-26 07:25:00",price:500)
Flight.create(departure_airport:del, departure_time:"2030-12-27 09:25:00", duration:560, arrival_airport:lgw, arrival_time:"2030-12-27 14:15:00",price:895)
Flight.create(departure_airport:lgw, departure_time:"2030-12-28 18:15:00", duration:520, arrival_airport:del, arrival_time:"2030-12-29 07:25:00",price:560)
Flight.create(departure_airport:del, departure_time:"2030-12-30 02:40:00", duration:560, arrival_airport:lgw, arrival_time:"2030-12-30 07:30:00",price:890)

