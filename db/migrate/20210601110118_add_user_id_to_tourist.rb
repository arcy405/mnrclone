class AddUserIdToTourist < ActiveRecord::Migration[6.0]
  def change
    add_column :tourists, :user_id, :string
  end
end
