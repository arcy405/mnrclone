class CreateProjectExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :project_expenses do |t|
      t.string :expenditure_title
      t.string :ammount
      t.string :biils
      t.string :project_belongs_to

      t.timestamps
    end
  end
end
