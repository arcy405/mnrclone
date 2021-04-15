class RemoveDobToDonor < ActiveRecord::Migration[6.0]
  def change
  	remove_column :donors, :dob, :date
  end
end
