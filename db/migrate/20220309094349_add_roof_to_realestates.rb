class AddRoofToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :roof, :string
  end
end
