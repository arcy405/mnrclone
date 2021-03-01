class DropListingIdFromReview < ActiveRecord::Migration[6.0]
  def change
  	remove_column :reviews, :listing_id, :integer
  end
end
