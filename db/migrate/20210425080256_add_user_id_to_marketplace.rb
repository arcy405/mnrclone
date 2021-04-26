class AddUserIdToMarketplace < ActiveRecord::Migration[6.0]
  def change
    add_column :marketplaces, :user_id, :integer
  end
end
