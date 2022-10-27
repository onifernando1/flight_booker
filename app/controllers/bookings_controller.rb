class BookingsController < ApplicationController

    def new
        @booking = Booking.new() 
        @flight = Flight.new(flight_params) #necessary?
    end 

    def flight_params #necessary?
        params.permit(:departure_airport_id, :arrival_airport_id, :departure_date)
    end 

end
