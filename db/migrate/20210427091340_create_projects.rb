class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :project_description
      t.string :foundation_name
      t.text :foundation_description
      t.string :organized_by
      t.text :organizer_description

      t.timestamps
    end
  end
end
