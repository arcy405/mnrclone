class CreateTourists < ActiveRecord::Migration[6.0]
  def change
    create_table :tourists do |t|
      t.string :place_name
      t.string :location
      t.string :contact

      t.timestamps
    end
  end
end
