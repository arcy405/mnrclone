class RemoveImageFromRealestate < ActiveRecord::Migration[6.0]
  def change
    remove_column :realestates, :image, :string
  end
end
