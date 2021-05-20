class AddCountryToDonation < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :country, :string
  end
end
