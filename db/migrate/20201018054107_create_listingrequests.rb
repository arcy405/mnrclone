class CreateListingrequests < ActiveRecord::Migration[6.0]
  def change
    create_table :listingrequests do |t|
      t.string :name
      t.string :address
      t.string :owner
      t.string :phone
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
