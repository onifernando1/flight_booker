# frozen_string_literal: true

class BookingsController < ApplicationController
  def new
    @selected_flight = Flight.find(params[:flight])
    # if @selected_flight == nil
    #     @selected_flight = Flight.find(params[:booking][:flight_id])
    # end
    @booking = Booking.new # change to booking new
    @number_of_passengers = params[:number_of_passengers].to_i
    @number_of_passengers.to_i.times { @booking.passengers.build }
  end

  def create
    @selected_flight = Flight.find(params[:flight])
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.with(booking_id: @booking.id, passenger_id: passenger.id).welcome_email.deliver_now
      end
      redirect_to @booking

    else
      render :new, status: :unprocessable_entity, flight: @selected_flight.id
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def flight_params
    params.permit(:flight)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
  end

  def passenger_params
    params.require(:passenger).permit(:name, :email)
  end
end
