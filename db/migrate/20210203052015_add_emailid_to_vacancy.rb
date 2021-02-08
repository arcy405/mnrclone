class AddEmailidToVacancy < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :emailid, :string
  end
end
