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
     
        if NewGoogleRecaptcha.human?(
          params[:new_google_recaptcha_token],
          "events",
          NewGoogleRecaptcha.minimum_score,
          @event
          )
          && @event.save
              if user_signed_in?
                current_user.gamification.create!(points:5)
              end
            redirect_to events_path, notice: 'Event was successfully created.' 
          else
            render :new 
        end
	end

	private
    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :location, :description,:date)
    end

end
