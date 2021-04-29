class AddPaymentDetailsToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :payment_details, :string
  end
end
