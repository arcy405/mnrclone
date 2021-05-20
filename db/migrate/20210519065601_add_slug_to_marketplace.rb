class AddSlugToMarketplace < ActiveRecord::Migration[6.0]
  def change
    add_column :marketplaces, :slug, :string
    add_index :marketplaces, :slug, unique: true

  end
end
