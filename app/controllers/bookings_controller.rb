class BookingsController < ApplicationController

    def new
        @booking = Booking.new() 
        @selected_flight = Flight.find(params[:flight])
    end 

    def bookings_params 
        params.permit(:flight_id)
    end 

    # def flight_params 
    #     params.permit(:departure_airport_id, :arrival_airport_id, :departure_date)
    # end 

 
end
