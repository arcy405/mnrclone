class AddBloodDonatedToDonor < ActiveRecord::Migration[6.0]
  def change
    add_column :donors, :blood_donated, :boolean
    add_column :donors, :blood_donated_times, :string
  end
end
