class CreateMarketplaces < ActiveRecord::Migration[6.0]
  def change
    create_table :marketplaces do |t|
      t.string :prod_name
      t.string :seller_name
      t.integer :price
      t.integer :contact
      t.string :image

      t.timestamps
    end
  end
end
