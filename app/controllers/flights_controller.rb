class FlightsController < ApplicationController

    def index
        @flights = Flight.all
        @airports = Airport.all
        @potential_flights = Flight.where(departure_airport:params[:departure_airport], arrival_airport: params[:arrival_airport],departure_date:params[:departure_date]) 
    end 


end
