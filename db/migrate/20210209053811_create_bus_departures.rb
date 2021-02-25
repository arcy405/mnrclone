class CreateBusDepartures < ActiveRecord::Migration[6.0]
  def change
    create_table :bus_departures do |t|
      t.string :destination
      t.datetime :depart_time
      t.string :company
      t.string :bus_number
      t.string :phone_number

      t.timestamps
    end
  end
end
