class BusDeparturesController < ApplicationController
	def index
		@busdeparture = BusDeparture.all
	end
end
