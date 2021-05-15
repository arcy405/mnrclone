class CreateUniversityDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :university_departments do |t|
      t.string :name

      t.timestamps
    end
  end
end
