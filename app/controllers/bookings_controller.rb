class BookingsController < ApplicationController

    def new
        @selected_flight = Flight.find(flight_params[:flight])
        @booking = Booking.new(flight_id: @selected_flight.id) 

    end 

    def create 
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to @booking
        else 
            render :new, status: :unprocessable_entity
        end 

        @booking.passenger 

        # @passenger = Passenger.new(passenger_params)
        # if @passenger.save 
        #     redirect_to @booking 
        # else 
        #     render :new, status: :unprocessable_entity
        # end 
    end 



    def flight_params 
        params.permit(:flight)
    end 

    def create_passengers
        @number_of_passengers = params[:number_of_passengers]
        # @number_of_passengers.to_i.times do {@booking.build_passenger} end 
    end 

    def booking_params
        params.require(:booking).permit(:flight_id)
    end 

    def passenger_params
        params.require(:passenger).permit(:name, :email)
    end 

 
end
