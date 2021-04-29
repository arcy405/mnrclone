class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end
	def show
		@project = Project.find(params[:id])
		@project_gallery = @project.project_images
		@donation = @project.donations.build
		@number_of_people = @project.donations.count
		@total_amount=@project.donations.sum(:donation_amount)
		@donors = @project.donations.all
	end
end
