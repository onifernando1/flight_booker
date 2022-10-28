class BookingsController < ApplicationController

    def new
        @booking = Booking.new(params[:flight_id]) 
    end 

 
end
