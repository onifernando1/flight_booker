# frozen_string_literal: true

class SeperateTheDateAndTimeFLights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure_date, :date
    add_column :flights, :departure_time, :time
    add_column :flights, :arrival_date, :date
    add_column :flights, :arrival_time, :time
  end
end
