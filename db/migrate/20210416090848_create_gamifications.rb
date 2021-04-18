class CreateGamifications < ActiveRecord::Migration[6.0]
  def change
    create_table :gamifications do |t|
      t.integer :points
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
