class CreateNoteApis < ActiveRecord::Migration[6.0]
  def change
    create_table :note_apis do |t|
      t.string :asset_url

      t.timestamps
    end
  end
end
