class AddColumnsToNotes < ActiveRecord::Migration[6.0]
  def change
  	add_reference :notes, :university, null: true, foreign_key: true
  	add_reference :notes, :university_department, null: true, foreign_key: true
    add_reference :notes, :university_semester, null: true, foreign_key: true
    add_column :notes, :subject_name, :string
    add_column :notes, :chapter_number, :integer
    add_column :notes, :chapter_name, :string
    add_column :notes, :notes_pdf, :string
  end
end
