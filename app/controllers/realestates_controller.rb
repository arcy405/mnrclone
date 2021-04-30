class RealestatesController < ApplicationController
  def index
    @Realestates=Realestate.order("created_at DESC")
    @Realestate_rent=Realestate.where("ptype=?", "rent")
    @Realestate_sell=Realestate.where("ptype=?", "sell")
    
  end
  def new
    @realestate=Realestate.new
    @realestate_images= @realestate.realestate_images.build
  end
  
  def create 
    @realestate=Realestate.create(realestates_params)
    if @realestate.save
      if user_signed_in?
          current_user.gamification.create!(points:5)
        end
      redirect_to realestates_path
    else
      render :new , alert: "Error creating listing."
    end
  end
  
  def show 
    @realestate=Realestate.find(params[:id])
  end 
   
   

  private
  def realestates_params
    params.require(:realestate).permit(:seller_name, :price, :description, :seller_phone , :ptype, :user_id,  :bathroom,:bedroom,:address, :propertyname,:kithchen, :image,realestate_images_attributes: [:id, :realestate_id, :image,:image_cache])
  end 
end
