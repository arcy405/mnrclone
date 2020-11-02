class AddStatusToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :status, :integer
  end
end
