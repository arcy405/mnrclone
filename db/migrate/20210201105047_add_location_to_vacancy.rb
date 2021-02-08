class AddLocationToVacancy < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :location, :string
  end
end
