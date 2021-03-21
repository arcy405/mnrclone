class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :asset_url

      t.timestamps
    end
  end
end
