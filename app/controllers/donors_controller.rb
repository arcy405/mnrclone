class DonorsController < ApplicationController
  def index
    @donors=Donor.all.order("created_at DESC")
    /@donorsApos=Donor.where('blood_group=?',"A+").order("created_at: :DESC")/
    
  end

  def new
    @donor=Donor.new
  end

  def show
    @donnar = Donnar.friendly.find(params[:id])
  end

  

  def create
    @donor = Donor.new(donor_params)

    if NewGoogleRecaptcha.human?(
      params[:new_google_recaptcha_token],
      "donors",
      NewGoogleRecaptcha.minimum_score,
      @post
      ) && @donor.save
          if user_signed_in?
            current_user.gamification.create!(points:5)
          end
          format.html { redirect_to donors_path notice: 'Blood was successfully created.' }
      else
        format.html { render :new }
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
      params.require(:donor).permit(:name, :address, :gender, :blood_group, :phone1, :phone2, :status, :verified,:age)
    end
end


