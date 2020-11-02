class AddListingsCountToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :listings_count, :integer
  end
end
