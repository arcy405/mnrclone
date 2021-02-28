class CreateTouristImages < ActiveRecord::Migration[6.0]
  def change
    create_table :tourist_images do |t|
      t.string :image
      t.belongs_to :tourist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
