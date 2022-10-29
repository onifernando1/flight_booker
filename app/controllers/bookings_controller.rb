class BookingsController < ApplicationController

    def new
        @selected_flight = Flight.find(flight_params[:flight])
        @booking = Booking.new(flight_id: @selected_flight.id) 
        create_passengers()

    end 

    def create 
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to @booking
        else 
            render :new, status: :unprocessable_entity
        end 

    
    end 

    def show 
        @booking = Booking.find(params[:id])
    end 



    def flight_params 
        params.permit(:flight)
    end 

    def create_passengers
        @number_of_passengers = params[:number_of_passengers]
        @number_of_passengers.to_i.times {@booking.passengers.build}
    end 

    def booking_params
        params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
    end 

   

 
end
