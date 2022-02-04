class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :doc_image
      t.string :doc_pdf
      t.string :doc_text

      t.timestamps
    end
  end
end
