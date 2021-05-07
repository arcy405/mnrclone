class AddTopServiceToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :top_service, :bool
  end
end
