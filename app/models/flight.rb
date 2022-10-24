class Flight < ApplicationRecord

    belongs_to :departure_airport, foreign_key:"departure_airport", class_name: 'Airport'
    belongs_to :arrival_airport, foreign_key:"arrival_airport", class_name: 'Airport'
    
    # def departure_date_uniq
        # departure_date.uniq
    # end

    # def arrival_date_formatted
    #     atime = arrival_date.strftime("%d/%m/%Y")
    # end
    
end
