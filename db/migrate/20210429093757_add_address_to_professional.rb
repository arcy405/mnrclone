class AddAddressToProfessional < ActiveRecord::Migration[6.0]
  def change
    add_column :professionals, :address, :string
  end
end
