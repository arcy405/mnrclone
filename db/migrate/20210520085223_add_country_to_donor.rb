class AddCountryToDonor < ActiveRecord::Migration[6.0]
  def change
    add_column :donors, :country, :string
  end
end
