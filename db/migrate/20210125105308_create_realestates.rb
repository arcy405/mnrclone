class CreateRealestates < ActiveRecord::Migration[6.0]
  def change
    create_table :realestates do |t|
      
      t.string :seller_name
      t.string :seller_phone
      t.string :price
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
