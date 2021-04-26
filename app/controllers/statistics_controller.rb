class StatisticsController < ApplicationController
	def index
		@stats = Statistic.all
	end
end
