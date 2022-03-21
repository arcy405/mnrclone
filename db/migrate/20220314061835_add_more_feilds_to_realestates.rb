class AddMoreFeildsToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :roomPfor, :string
    add_column :realestates, :shutterPfor, :string
  end
end
