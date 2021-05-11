class AlterAmountDatatypeInProjectExpense < ActiveRecord::Migration[6.0]
  def change
  	remove_column :project_expenses, :ammount, :string
  	add_column :project_expenses, :spent_amount, :integer
  end
end
