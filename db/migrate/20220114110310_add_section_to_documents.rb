class AddSectionToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :documents, :section, null: false, foreign_key: true
  end
end
