class RemoveTopServiceToListing < ActiveRecord::Migration[6.0]
  def change
  	remove_column :listings, :top_service, :bool
  end
end
