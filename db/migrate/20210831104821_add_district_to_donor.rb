class AddDistrictToDonor < ActiveRecord::Migration[6.0]
  def change
    add_column :donors, :district, :string
  end
end
