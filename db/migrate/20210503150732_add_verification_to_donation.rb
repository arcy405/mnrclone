class AddVerificationToDonation < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :verification, :bool
  end
end
