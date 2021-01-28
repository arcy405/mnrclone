class DonorsController < ApplicationController
  def index
    @donors=Donor.all
  end

  def new
    @donor=Donor.new
  end

  def show
    @donnar = Donnar.find(params[:id])
  end

  

  def create
    @donor = Donor.new(donor_params)

    respond_to do |format|
      if @donor.save
        format.html { redirect_to donors_path notice: 'Blood was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
    # Only allow a list of trusted parameters through.
    def donor_params
      params.require(:donor).permit(:name, :address, :gender, :dob, :blood_group, :phone1, :phone2, :status, :verified)
    end
end


