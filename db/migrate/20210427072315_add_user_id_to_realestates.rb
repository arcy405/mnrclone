class AddUserIdToRealestates < ActiveRecord::Migration[6.0]
  def change
    add_column :realestates, :user_id, :integer
  end
end
