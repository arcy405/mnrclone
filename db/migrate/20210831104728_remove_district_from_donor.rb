class RemoveDistrictFromDonor < ActiveRecord::Migration[6.0]
  def change
    remove_column :donors, :district, :string
  end
end
