class EventsController < ApplicationController
	
	def index
		@todays_events = Event.where("date = ?",DateTime.now)
		@coming_events = Event.where("date > ?",DateTime.now)
	end
	def new
		@event=Event.new
	end

	def create
	   @event = Event.new(event_params)
     respond_to do |format|
        if NewGoogleRecaptcha.human?(
          params[:new_google_recaptcha_token],
          "events",
          NewGoogleRecaptcha.minimum_score,
          @post
          ) && @event.save
            if user_signed_in?
              current_user.gamification.create!(points:5)
            end
            format.html { redirect_to events_path notice: 'Event was successfully created.' }
          else
            format.html { render :new }
        end
      end
	end

	private
    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :location, :description,:date)
    end

end
