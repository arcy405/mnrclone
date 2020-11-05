class CreateSearchedkeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :searchedkeywords do |t|
      t.string :word

      t.timestamps
    end
  end
end
