# frozen_string_literal: true

class DropBookings < ActiveRecord::Migration[7.0]
  def change
    drop_table :bookings
  end
end
