class CreateSubDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_departments do |t|
      t.string :name
      t.belongs_to :university_department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
