class PassengerMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def welcome_email 
        @booking = Booking.find(params[:booking_id])
        mail(to: @booking.passengers.email, subject:"Welcome!")
    end
end
