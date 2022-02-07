class AddDistrictToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :district, :string
  end
end
