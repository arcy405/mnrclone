class GamificationsController < ApplicationController
	def index
		@points = current_user.gamification.all.sum(:points)
	end
end
