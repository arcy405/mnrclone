class CreatePollVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_votes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :poll_answers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
