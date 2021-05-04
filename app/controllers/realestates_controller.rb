class RealestatesController < ApplicationController
      def index
        @Realestates=Realestate.order("created_at DESC")
        @Realestate_rent=Realestate.where("ptype=?", "rent")
        @Realestate_sell=Realestate.where("ptype=?", "sell")
        
      end
      def new
        @realestate=Realestate.new
        @realestate_image= @realestate.realestate_images.build
      end
      

      def show 
        @realestate=Realestate.find(params[:id])
        
      end 
      
      def create
        @realestate = Realestate.new(realestates_params)

        respond_to do |format|
          if @realestate.save
            params[:realestate_images]['image'].each do |i|
            @realestate_image = @realestate.realestate_images.create!(:image => i)
          end

            if user_signed_in?
                current_user.gamification.create!(points:5)
            end
            format.html { redirect_to realestates_path notice: 'Realestate was successfully added.' }
          else
            format.html { render :new }
          end
        end
      end
       
      

      private
      def realestates_params
        params.require(:realestate).permit(:latitude, :longitude,  :seller_name, :price, :description, :seller_phone , :ptype, :user_id,  :bathroom,:bedroom,:address, :propertyname,:kithchen, realestate_images_attributes: [:id, :realestate_id, :image,:image_cache])
      end 
end
