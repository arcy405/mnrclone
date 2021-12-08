class AddNewDepartureDatesToBusDepartures < ActiveRecord::Migration[6.0]
  def change
    add_column :bus_departures, :departure_dates, :date
  end
end
