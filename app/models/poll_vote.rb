class PollVote < ApplicationRecord
  belongs_to :user
  belongs_to :poll_answer
  belongs_to :poll
end
