class CreateSyllabuses < ActiveRecord::Migration[6.0]
  def change
    create_table :syllabuses do |t|
      t.string :syllabus_pdf
      t.string :name
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
