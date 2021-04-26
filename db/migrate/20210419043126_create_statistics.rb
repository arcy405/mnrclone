class CreateStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :statistics do |t|
      t.string :population
      t.string :wards
      t.string :area
      t.string :map
      t.string :mayor
      t.string :sub_mayor

      t.timestamps
    end
  end
end
