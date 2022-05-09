class RemoveSubjectPdfFromSubject < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :subject_pdf, :string
  end
end
