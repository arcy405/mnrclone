class CreatePostImages < ActiveRecord::Migration[6.0]
  def change
    create_table :post_images do |t|
      t.string :image
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
