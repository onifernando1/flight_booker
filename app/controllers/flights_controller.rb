class FlightsController < ApplicationController

    def index
        @flights = Flight.all  
        # @airport_options = Airport.all.map {|f|[f.name, f.id]}
        # @departure_date_options = Flight.all.map {|f| [f.departure_date.strftime("%d/%m/%Y"), f.id]}
        # @arrival_date_options = Flight.all.map {|f| [f.arrival_date.strftime("%d/%m/%Y"), f.id]}
    end 


end
