# frozen_string_literal: true

class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
    @potential_flights = Flight.where(departure_airport_id: params[:departure_airport_id],
                                      arrival_airport_id: params[:arrival_airport_id], departure_date: params[:departure_date])
    @flight = Flight.new(flight_params)
  end

  def flight_params
    params.permit(:departure_airport_id, :arrival_airport_id, :departure_date)
  end

  def search_params
    params.permit(:departure_airport_id, :arrival_airport_id, :departure_date, :number_of_passengers)
  end
end
