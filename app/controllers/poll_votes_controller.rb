class PollVotesController < ApplicationController
	def create
		@poll=Poll.find(poll_vote_params[:poll_id])
		@poll_vote = current_user.poll_votes.create(poll_vote_params)

		respond_to do |format|
          if @poll_vote.save
              format.js
          end
        end
      end

      private
      # Only allow a list of trusted parameters through.
      def poll_vote_params
        params.require(:poll_vote).permit(:poll_answer_id,:user_id,:poll_id)
      end
end
