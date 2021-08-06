class RemoveDescriptionFromRealestate < ActiveRecord::Migration[6.0]
  def change
    remove_column :realestates, :description, :string
  end
end
