class AddImageToDonation < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :image, :string
  end
end
