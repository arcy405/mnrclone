class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :contact
      t.belongs_to :profession, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
