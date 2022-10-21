class ChangeDepartureAirportToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_airport, :string
  end
end
