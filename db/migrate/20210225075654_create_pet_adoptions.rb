class CreatePetAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_adoptions do |t|
      t.string :pet_name
      t.string :pet_age
      t.string :pet_type
      t.string :owner_name
      t.string :location
      t.string :contact

      t.timestamps
    end
  end
end
