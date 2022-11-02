# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.delete_all
lgw = Airport.create(id: 1, name: 'London Gatwick', code: 'LGW')
mad = Airport.create(id: 2, name: 'Madrid', code: 'MAD')
# mxp = Airport.create(id:3,name:"Milan Malpensa", code:"MXP")
# del  = Airport.create(id:4,name:"New Delhi", code:"DEL")

Flight.delete_all
Flight.create(departure_airport_id: 1, departure_date: '2030-12-25', departure_time: '10:00:00', duration: 150,
              arrival_airport_id: 2, arrival_date: '2030-12-25', arrival_time: '13:30:00', price: 120)
Flight.create(departure_airport_id: 1, departure_date: '2030-12-26', departure_time: '10:00:00', duration: 150,
              arrival_airport_id: 2, arrival_date: '2030-12-26', arrival_time: '13:30:00', price: 120)
Flight.create(departure_airport_id: lgw.id, departure_date: '2030-12-25', departure_time: '13:00:00', duration: 150,
              arrival_airport_id: mad.id, arrival_date: '2030-12-25', arrival_time: '16:30:00', price: 120)
Flight.create(departure_airport_id: lgw.id, departure_date: '2030-12-26', departure_time: '13:00:00', duration: 150,
              arrival_airport_id: mad.id, arrival_date: '2030-12-26', arrival_time: '16:30:00', price: 120)
Flight.create(departure_airport_id: lgw.id, departure_date: '2030-12-26', departure_time: '20:40:00', duration: 139,
              arrival_airport_id: mad.id, arrival_date: '2030-12-26', arrival_time: '23:59:00', price: 175)
Flight.create(departure_airport_id: lgw.id, departure_date: '2030-12-25', departure_time: '20:40:00', duration: 139,
              arrival_airport_id: mad.id, arrival_date: '2030-12-25', arrival_time: '23:59:00', price: 175)

Flight.create(departure_airport_id: mad.id, departure_date: '2030-12-26', departure_time: '15:00:00', duration: 145,
              arrival_airport_id: lgw.id, arrival_date: '2030-12-26', arrival_time: '16:25:00', price: 160)
Flight.create(departure_airport_id: mad.id, departure_date: '2030-12-25', departure_time: '15:00:00', duration: 145,
              arrival_airport_id: lgw.id, arrival_date: '2030-12-25', arrival_time: '16:25:00', price: 160)
Flight.create(departure_airport_id: mad.id, departure_date: '2030-12-26', departure_time: '18:00:00', duration: 145,
              arrival_airport_id: lgw.id, arrival_date: '2030-12-26', arrival_time: '19:25:00', price: 160)
Flight.create(departure_airport_id: mad.id, departure_date: '2030-12-25', departure_time: '18:00:00', duration: 145,
              arrival_airport_id: lgw.id, arrival_date: '2030-12-25', arrival_time: '19:25:00', price: 160)
Flight.create(departure_airport_id: mad.id, departure_date: '2030-12-25', departure_time: '18:40:00', duration: 140,
              arrival_airport_id: lgw.id, arrival_date: '2030-12-25', arrival_time: '20:00:00', price: 210)
Flight.create(departure_airport_id: mad.id, departure_date: '2030-12-26', departure_time: '18:40:00', duration: 140,
              arrival_airport_id: lgw.id, arrival_date: '2030-12-26', arrival_time: '20:00:00', price: 210)

# fix duplicates
