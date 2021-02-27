class TouristsController < ApplicationController
    def index 
        @tourist=Tourist.order("created_at DESC")
    end 
     
    def show
      @tourist = Tourist.find(params[:id])
    
      
    end
end












