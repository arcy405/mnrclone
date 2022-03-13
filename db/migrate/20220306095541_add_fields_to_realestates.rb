class AddFieldsToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :pfor, :string
    add_column :realestates, :floor, :string
    add_column :realestates, :garden, :boolean
    add_column :realestates, :hall, :string
    add_column :realestates, :baranda, :string
    add_column :realestates, :length, :decimal
    add_column :realestates, :breadth, :decimal
    add_column :realestates, :shutter_no, :string
  end
end
