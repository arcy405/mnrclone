class AddNameToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :name, :string
  end
end
