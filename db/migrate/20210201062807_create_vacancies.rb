class CreateVacancies < ActiveRecord::Migration[6.0]
  def change
    create_table :vacancies do |t|
      t.text :about_company
      t.string :job_title
      t.string :job_category
      t.string :job_level
      t.string :no_of_vacancy
      t.string :employment_type
      t.string :offered_salary
      t.datetime :apply_before
      t.string :education_level
      t.string :experience_required
      t.string :professional_skill
      t.text :other_specification
      t.text :job_desciption

      t.timestamps
    end
  end
end
