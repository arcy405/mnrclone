class AddPropertynameToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :propertyname, :string
    add_column :realestates, :address, :string
    add_column :realestates, :bedroom, :string
    add_column :realestates, :kitchen, :string
    add_column :realestates, :bathroom, :string
  end
end
