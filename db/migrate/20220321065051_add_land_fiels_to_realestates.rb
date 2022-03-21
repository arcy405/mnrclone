class AddLandFielsToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :kattha, :string
    add_column :realestates, :dhur, :string
    add_column :realestates, :bigha, :string
  end
end
