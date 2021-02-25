class RemovePetAgeFromPetAdoption < ActiveRecord::Migration[6.0]
  def change
    remove_column :pet_adoptions, :pet_age, :string
    remove_column :pet_adoptions, :owner_name, :string
  end
end
