class AddCompanynameToVacancy < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :company_name, :string
  end
end
