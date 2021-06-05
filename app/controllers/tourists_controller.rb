class TouristsController < ApplicationController
  
  before_action :set_tourist, only: [:show , :destroy, :edit, :update]
  
  def index 
        @tourist=Tourist.order(:place_name)
    end 
     
    def show
      @tourist = Tourist.friendly.find(params[:id])
    end

    def new
      @tourist = Tourist.new
      @tourist_image = @tourist.tourist_images.build

    end 

    def create 
      @tourist = Tourist.new(tourist_params)

        if @tourist.save
            params[:tourist_images]['image'].each do |a|
            @tourist_image = @tourist.tourist_images.create!(:image => a)
          end

            if user_signed_in?
                current_user.gamification.create!(points:5)
             end
            redirect_to tourists_path
          else
            render :new 
        end 

    end 

    def edit 
      @tourist = Tourist.friendly.find(params[:id])
    end 

    def update 
      if @tourist.update(tourist_params)
        redirect_to @tourist
      else
        render :edit
      end 

    end 

    def destroy
      if @tourist.destroy
        redirect_to @tourist
      end 
    end 

  

    private
    def set_tourist 
      @tourist = Tourist.friendly.find(params[:id])
    end

    def tourist_params
      params.require(:tourist).permit(:place_name, :location, :contact, :longitude, :lattitude, :feature, :description,  tourist_images_attributes: [:id, :tourist_id, :image, :image_cache])
          
        
    end 

end












