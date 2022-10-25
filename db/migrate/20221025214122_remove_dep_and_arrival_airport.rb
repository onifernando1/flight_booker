class RemoveDepAndArrivalAirport < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_airport, :integer
    remove_column :flights, :arrival_airport, :integer

  end
end
