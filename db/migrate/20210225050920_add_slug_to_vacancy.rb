class AddSlugToVacancy < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :slug, :string
    add_index :vacancies, :slug, unique: true
  end
end
