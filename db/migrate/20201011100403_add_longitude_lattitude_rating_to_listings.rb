class AddLongitudeLattitudeRatingToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :longitude, :decimal
    add_column :listings, :lattitude, :decimal
    add_column :listings, :rating, :integer
  end
end
