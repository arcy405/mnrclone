class RealestatesController < ApplicationController
  def index
    @Realestates=Realestate.order("created_at DESC")
    @Realestate_rent=Realestate.where("ptype=?", "rent")
    @Realestate_sell=Realestate.where("ptype=?", "sell")
    
  end
  def new
    @realestate=Realestate.new
  end
  
  def create 
    @realestate=Realestate.create(realestates_params)
    if @realestate.save
      if user_signed_in?
          current_user.gamification.create!(points:5)
        end
      redirect_to realestates_path
    else
      redirect_to realestates_new_path, alert: "Error creating listing."
    end
  end
   
   

  private
  def realestates_params
    params.require(:realestate).permit(:seller_name, :price, :description, :seller_phone , :ptype, :bathroom,:bedroom,:address, :propertyname,:kithchen, :image )
  end
end
