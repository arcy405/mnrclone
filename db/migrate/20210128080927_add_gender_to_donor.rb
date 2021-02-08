class AddGenderToDonor < ActiveRecord::Migration[6.0]
  def change
    add_column :donors, :gender, :string
  end
end
