# frozen_string_literal: true

class CreateBookingsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_id

      t.timestamps
    end
  end
end
