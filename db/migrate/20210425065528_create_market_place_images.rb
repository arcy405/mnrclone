class CreateMarketPlaceImages < ActiveRecord::Migration[6.0]
  def change
    create_table :market_place_images do |t|
      t.integer :marketplace_id
      t.string :image

      t.timestamps
    end
  end
end
