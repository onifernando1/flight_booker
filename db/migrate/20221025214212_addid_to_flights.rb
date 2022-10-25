class AddidToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure_airport_id, :datetime
    add_column :flights, :arrival_airport_id, :datetime
  end
end
