class AddNewFeildsToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :flatBedroom, :string
    add_column :realestates, :flatKitchen, :string
    add_column :realestates, :flatHall, :string
    add_column :realestates, :flatBathroom, :string
    add_column :realestates, :flatFloor, :string
    add_column :realestates, :flatPfor, :string
    add_column :realestates, :roomBedroom, :string
    add_column :realestates, :roomKitchen, :string
    add_column :realestates, :roomBathroom, :string
    add_column :realestates, :roomFloor, :string
  end
end
