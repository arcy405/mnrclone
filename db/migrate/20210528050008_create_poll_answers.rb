class CreatePollAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_answers do |t|
      t.string :answer
      t.belongs_to :poll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
