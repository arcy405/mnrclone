class CreateRealestateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :realestate_images do |t|
      t.integer :realestate_id
      t.string :image

      t.timestamps
    end
  end
end
