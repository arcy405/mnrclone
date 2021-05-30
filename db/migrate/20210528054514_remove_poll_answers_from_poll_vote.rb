class RemovePollAnswersFromPollVote < ActiveRecord::Migration[6.0]
  def change
    remove_reference :poll_votes, :poll_answers, null: false, foreign_key: true
  end
end
