class ProjectsController < ApplicationController
	def index
		@projects = Project.all

	end
	def show
		@project = Project.friendly.find(params[:id])

		@project_expense = @project.project_expenses
		@total_amount_spent = @project.project_expenses.sum(:spent_amount)
		@project_gallery = @project.project_images
		@donation = @project.donations.build

		@number_of_people = @project.donations.where("verification=?", true).count
		@total_amount=@project.donations.where("verification=?", true).sum(:donation_amount)
		@donors = @project.donations.order("created_at DESC").where("verification=?", true )

	end
end
