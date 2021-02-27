class AddFeatureToTourist < ActiveRecord::Migration[6.0]
  def change
    add_column :tourists, :feature, :string
  end
end
