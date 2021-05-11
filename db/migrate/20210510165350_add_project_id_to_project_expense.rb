class AddProjectIdToProjectExpense < ActiveRecord::Migration[6.0]
  def change
    add_column :project_expenses, :project_id, :string
  end
end
