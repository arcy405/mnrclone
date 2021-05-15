class RemoveUniversityFromUniversityDepartment < ActiveRecord::Migration[6.0]
  def change
    remove_reference :university_departments, :university, null: false, foreign_key: true
  end
end
