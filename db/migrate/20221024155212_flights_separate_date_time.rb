class FlightsSeparateDateTime < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_time, :datetime
    remove_column :flights, :arrival_time, :datetime
   
  end
end
