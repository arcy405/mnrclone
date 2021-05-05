class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :donor_name
      t.string :address
      t.string :contact
      t.string :amount
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
