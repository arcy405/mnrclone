class RemoveDepartureDatesFromBusDepartures < ActiveRecord::Migration[6.0]
  def change
    remove_column :bus_departures, :departure_dates, :string
  end
end
