class AddDescriptionToMarketplace < ActiveRecord::Migration[6.0]
  def change
    add_column :marketplaces, :description, :string
  end
end
