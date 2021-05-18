class AddUniversitySemesterToSubject < ActiveRecord::Migration[6.0]
  def change
    add_reference :subjects, :university_semester, null: true, foreign_key: true
  end
end
