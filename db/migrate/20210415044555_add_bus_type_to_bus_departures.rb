class AddBusTypeToBusDepartures < ActiveRecord::Migration[6.0]
  def change
    add_column :bus_departures, :bus_type, :string
  end
end
