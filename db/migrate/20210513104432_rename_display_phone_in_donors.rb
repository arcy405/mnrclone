class RenameDisplayPhoneInDonors < ActiveRecord::Migration[6.0]
  def change
  	  	rename_column :donors, :display_phone, :dont_display_phone

  end
end
