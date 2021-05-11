class RemoveProjectBelongsToFromProjectExpense < ActiveRecord::Migration[6.0]
  def change
    remove_column :project_expenses, :project_belongs_to, :string
  end
end
