class DropPostCatgeory < ActiveRecord::Migration[6.0]
  def change
  	drop_table :post_categories
  end
end
