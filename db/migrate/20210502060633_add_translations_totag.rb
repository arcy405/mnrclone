class AddTranslationsTotag < ActiveRecord::Migration[6.0]
  def change
  	rename_column :tags, :title, :title_en
  	add_column :tags, :title_np, :string
  end
end
