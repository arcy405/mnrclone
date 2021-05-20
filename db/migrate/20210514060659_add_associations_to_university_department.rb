class AddAssociationsToUniversityDepartment < ActiveRecord::Migration[6.0]
  def change
  	    add_reference :university_departments, :university, null: true, foreign_key: true
        add_reference :university_departments, :department, null: true, foreign_key: true
  end
end
