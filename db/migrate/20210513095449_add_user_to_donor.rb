class AddUserToDonor < ActiveRecord::Migration[6.0]
  def change
    add_reference :donors, :user, null: true, foreign_key: true
    add_column :donors, :display_phone, :bool
  end
end
