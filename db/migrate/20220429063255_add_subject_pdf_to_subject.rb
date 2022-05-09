class AddSubjectPdfToSubject < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :subject_pdf, :string
  end
end
