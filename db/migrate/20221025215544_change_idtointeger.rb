class ChangeIdtointeger < ActiveRecord::Migration[7.0]
  def change
    change_column(:flights, :departure_airport_id, :integer)
    change_column(:flights, :arrival_airport_id, :integer)


  end
end
