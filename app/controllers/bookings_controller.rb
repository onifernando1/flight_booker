class BookingsController < ApplicationController

    def new
        @selected_flight = Flight.find(flight_params[:flight])
        @booking = Booking.new(flight_id: @selected_flight.id) 

    end 

    def flight_params 
        params.permit(:flight)
    end 

 
end
