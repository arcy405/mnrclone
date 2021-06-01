class Poll < ApplicationRecord
	has_many :poll_answers, dependent: :destroy
	has_many :poll_votes, dependent: :destroy
end
