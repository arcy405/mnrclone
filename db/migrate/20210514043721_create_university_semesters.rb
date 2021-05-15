class CreateUniversitySemesters < ActiveRecord::Migration[6.0]
  def change
    create_table :university_semesters do |t|
      t.string :name

      t.timestamps
    end
  end
end
