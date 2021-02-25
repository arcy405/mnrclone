class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :name
      t.datetime :dob
      t.string :gender
      t.string :ethnicity

      t.timestamps
    end
  end
end
