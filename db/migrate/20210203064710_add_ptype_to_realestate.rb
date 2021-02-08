class AddPtypeToRealestate < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :ptype, :string
  end
end
