class AddImageToPetAdoption < ActiveRecord::Migration[6.0]
  def change
    add_column :pet_adoptions, :image, :string
  end
end
