class AddSlugToTourist < ActiveRecord::Migration[6.0]
  def change
    add_column :tourists, :slug, :string
    add_index :tourists, :slug, unique: true
  end
end
