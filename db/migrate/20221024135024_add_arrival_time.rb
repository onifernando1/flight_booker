# frozen_string_literal: true

class AddArrivalTime < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :arrival_time, :datetime
  end
end
