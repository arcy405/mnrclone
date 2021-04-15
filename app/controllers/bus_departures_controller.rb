class BusDeparturesController < ApplicationController
	def index
		@busdeparture = BusDeparture.all
		@cal = NepaliCalendar::Calendar.new
	end
end
