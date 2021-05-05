class AddTaglineToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :tagline, :string
  end
end
