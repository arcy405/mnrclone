class RealestatesController < ApplicationController

  before_action :set_realestate, only: [:show, :edit, :update, :destroy]

  def index
    @Realestates=Realestate.order("created_at DESC")
        @Realestate_rent=Realestate.where("ptype=?", "rent")
        @Realestate_sell=Realestate.where("ptype=?", "sell")
  end

  def show
    @realestate = Realestate.find(params[:id])
  end
  def new
    @realestate = Realestate.new
    @realestate_image = @realestate.realestate_images.build
  end
  def create
        @realestate = Realestate.new(realestate_params)
    
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
  
  def edit
    @realestate = Realestate.find(params[:id])
  end

  def update
    respond_to do |format|
      if @realestate.update(realestate_params)
        format.html { redirect_to @realestate, notice: 'Realestate was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @realestate.destroy
    respond_to do |format|
      format.html { redirect_to realestates_url, notice: 'Realestate was successfully destroyed.' }
    end
  end
 
   def index
     @Realestates=Realestate.order("created_at DESC")
         @Realestate_rent=Realestate.where("ptype=?", "rent")
         @Realestate_sell=Realestate.where("ptype=?", "sell")
   end
 
   def show
     @realestate = Realestate.find(params[:id])
   end
   def new
     @realestate = Realestate.new
     @realestate_image = @realestate.realestate_images.build
   end
   def create
         @realestate = Realestate.new(realestate_params)
     
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
 
      
   
   def edit
     @realestate = Realestate.find(params[:id])
   end
 
   def update
     respond_to do |format|
       if @realestate.update(realestate_params)
         format.html { redirect_to @realestate, notice: 'Realestate was successfully updated.' }
       else
         format.html { render :edit }
       end
     end
   end
 
   def destroy
     @realestate.destroy
     respond_to do |format|
       format.html { redirect_to realestates_url, notice: 'Realestate was successfully destroyed.' }
     end
   end
 
       
 
       private
       def set_realestate
         @realestate = Realestate.find(params[:id])
      end
 
       def realestate_params
         params.require(:realestate).permit(:latitude, :longitude,  :seller_name, :price, :description, :seller_phone , :ptype, :user_id,  :bathroom,:bedroom,:address, :propertyname,:kithchen, realestate_images_attributes: [:id, :realestate_id, :image,:image_cache])
       end 
end