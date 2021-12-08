class AddDepartureDateToBusDepartures < ActiveRecord::Migration[6.0]
  def change
    add_column :bus_departures, :departure_date, :date
  end
end
