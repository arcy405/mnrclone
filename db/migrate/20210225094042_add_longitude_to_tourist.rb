class AddLongitudeToTourist < ActiveRecord::Migration[6.0]
  def change
    add_column :tourists, :longitude, :string
    add_column :tourists, :lattitude, :string
  end
end
