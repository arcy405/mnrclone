class RemoveAmountFromProject < ActiveRecord::Migration[6.0]
  def change
    remove_column :donations, :amount, :string
  end
end
