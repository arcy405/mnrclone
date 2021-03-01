class AddDescriptionToTourist < ActiveRecord::Migration[6.0]
  def change
    add_column :tourists, :description, :string
  end
end
