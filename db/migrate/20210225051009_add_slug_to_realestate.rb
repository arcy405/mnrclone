class AddSlugToRealestate < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :slug, :string
    add_index :realestates, :slug, unique: true
  end
end
