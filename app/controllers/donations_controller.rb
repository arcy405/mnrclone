class DonationsController < ApplicationController

	  before_action :get_project
	def new
		@donation = @project.donations.build
	end

	def create
    @donation = @project.donations.new(donation_params)

    respond_to do |format|
      if @donation.save
        if user_signed_in?
          current_user.gamification.create!(points:20)
        end
        format.html { redirect_to project_path(params[:project_id], notice: 'Thank You for Donation.') }
      else
        format.html { render :new }
      end
    end
  end


private
  def get_project
    @project = Project.find(params[:project_id])
  end

  def donation_params
      params.require(:donation).permit(:donor_name,:address,:contact,:donation_amount)
    end

end
