class TouristsController < ApplicationController
    def index 
        @Tourists=Tourist.order("created_at DESC")
    end 


  private
  def tourists_params
    params.require(:tourist).permit(:place_name ,:location, :contact )
  end
end
