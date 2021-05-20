class RemoveCountryFromDonor < ActiveRecord::Migration[6.0]
  def change
    remove_column :donors, :country, :string
  end
end
