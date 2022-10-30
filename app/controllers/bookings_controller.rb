class BookingsController < ApplicationController

    def new
        @selected_flight = Flight.find(flight_params[:flight])
        @booking = Booking.new # change to booking new 
        @number_of_passengers = params[:number_of_passengers].to_i
        params[:number_of_passengers].to_i.times {@booking.passengers.build}

    end 

    def create 
        @booking = Booking.new(booking_params)
        @booking.passengers.build(passenger_params)
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


    def booking_params
        params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
    end 

    def passenger_params
        params.require(:passenger).permit(:name, :email)

    end 

   

 
end
