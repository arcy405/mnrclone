class AddAgeToDonor < ActiveRecord::Migration[6.0]
  def change
    add_column :donors, :age, :integer
  end
end
