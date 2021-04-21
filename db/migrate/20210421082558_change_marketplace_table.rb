class ChangeMarketplaceTable < ActiveRecord::Migration[6.0]
  def change
  	remove_column :marketplaces, :contact, :integer
  	add_column :marketplaces, :phone, :string
  end
end
