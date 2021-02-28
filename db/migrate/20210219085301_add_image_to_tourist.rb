class AddImageToTourist < ActiveRecord::Migration[6.0]
  def change
    add_column :tourists, :image, :string
  end
end
