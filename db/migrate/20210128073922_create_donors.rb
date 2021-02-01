class CreateDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :donors do |t|
      t.string :name
      t.string :address
      t.string :phone1
      t.string :phone2
      t.date :dob
      t.string :blood_group
      t.string :status
      t.string :verified

      t.timestamps
    end
  end
end
