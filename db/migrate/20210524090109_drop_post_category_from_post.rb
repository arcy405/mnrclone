class DropPostCategoryFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_reference :posts, :post_category, null: false, foreign_key: true
  end
end
