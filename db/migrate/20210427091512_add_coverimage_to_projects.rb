class AddCoverimageToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :coverimage, :string
  end
end
