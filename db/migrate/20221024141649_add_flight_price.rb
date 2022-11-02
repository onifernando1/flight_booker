# frozen_string_literal: true

class AddFlightPrice < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :price, :integer
  end
end
