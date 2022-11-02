# frozen_string_literal: true

class FixAirportTypo < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_airpot, :string
    add_column :flights, :departure_airport, :string
  end
end
