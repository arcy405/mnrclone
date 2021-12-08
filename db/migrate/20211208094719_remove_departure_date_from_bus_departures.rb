class RemoveDepartureDateFromBusDepartures < ActiveRecord::Migration[6.0]
  def change
    remove_column :bus_departures, :departure_dates, :date
  end
end
