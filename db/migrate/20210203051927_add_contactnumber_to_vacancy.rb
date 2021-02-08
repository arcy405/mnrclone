class AddContactnumberToVacancy < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :contactnumber, :string
  end
end
