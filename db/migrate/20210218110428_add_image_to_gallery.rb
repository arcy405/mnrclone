class AddImageToGallery < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :image, :string
  end
end
