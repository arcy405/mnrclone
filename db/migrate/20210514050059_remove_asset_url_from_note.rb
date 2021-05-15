class RemoveAssetUrlFromNote < ActiveRecord::Migration[6.0]
  def change
    remove_column :notes, :asset_url, :string
  end
end
