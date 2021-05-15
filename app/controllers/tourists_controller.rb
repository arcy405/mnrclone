class TouristsController < ApplicationController
    def index 
        @tourist=Tourist.order(:place_name)
    end 
     
    def show
      @tourist = Tourist.find(params[:id])
    end
end












