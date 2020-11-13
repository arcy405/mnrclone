class RemoveFirstNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :firstName, :string
  end
end
