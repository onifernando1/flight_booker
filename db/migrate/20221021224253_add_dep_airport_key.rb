# frozen_string_literal: true

class AddDepAirportKey < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure_airport, :integer
  end
end
