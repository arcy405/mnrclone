class DonorsController < ApplicationController

  before_action :set_donors, only: [:edit, :update, :destroy]

  def index
    @donors=Donor.order(:blood_group).where("status=?","Available")
  end

  def new
    @donor=Donor.new
  end

  def create
    @donor = Donor.new(donor_params)

   respond_to do |format|
    if  @donor.save
         
          format.html { redirect_to donors_path, notice: 'Donor was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
     @donor = Donor.friendly.find(params[:id])
  end

  def update
    respond_to do |format|
      if @donor.update(donor_params)
        format.html { redirect_to donors_path, notice: 'Thank You, Donor was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @donor.destroy
    respond_to do |format|
      format.html { redirect_to donors_path, notice: ' Donor was successfully destroyed.' }
    end
  end

  private
    def set_donors
      @donor = Donor.friendly.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def donor_params
      params.require(:donor).permit(:name, :address, :gender, :blood_group,:user_id,:dont_display_phone, :phone1, :phone2, :status, :verified,:age, :blood_donated, :blood_donated_times)
    end
end


