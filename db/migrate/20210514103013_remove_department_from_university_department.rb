class RemoveDepartmentFromUniversityDepartment < ActiveRecord::Migration[6.0]
  def change
    remove_reference :university_departments, :department, null: false, foreign_key: true
  end
end
