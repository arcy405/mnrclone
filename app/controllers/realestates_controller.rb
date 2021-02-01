class RealestatesController < ApplicationController
  def index
    @Realestates=Realestate.order("created_at DESC")
  end
  def new
    @realestate=Realestate.new
  end
  def create 
    @realestate=Realestate.create(realestates_params)
    if @realestate.save
      redirect_to realestates_path
    else
      redirect_to realestates_new_path, alert: "Error creating listing."
    end
  end

  private
  def realestates_params
    params.require(:realestate).permit(:seller_name)
  end
end
