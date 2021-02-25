class AddSlugToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :slug, :string
    add_index :listings, :slug, unique: true
  end
end
