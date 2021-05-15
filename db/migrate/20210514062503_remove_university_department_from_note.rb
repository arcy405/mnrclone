class RemoveUniversityDepartmentFromNote < ActiveRecord::Migration[6.0]
  def change
    remove_reference :notes, :university_department, null: false, foreign_key: true
  end
end
