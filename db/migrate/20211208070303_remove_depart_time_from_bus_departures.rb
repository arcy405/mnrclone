class RemoveDepartTimeFromBusDepartures < ActiveRecord::Migration[6.0]
  def change
    remove_column :bus_departures, :depart_time, :datetime
  end
end
