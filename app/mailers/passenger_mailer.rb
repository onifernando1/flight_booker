# frozen_string_literal: true

class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @booking = Booking.find(params[:booking_id])
    @passenger = Passenger.find(params[:passenger_id])
    mail(to: @passenger.email, subject: 'Welcome!')
  end
end
