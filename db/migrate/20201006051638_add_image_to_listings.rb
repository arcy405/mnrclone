class AddImageToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :image, :string
  end
end
