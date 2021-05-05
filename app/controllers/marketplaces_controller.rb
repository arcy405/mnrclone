class MarketplacesController < ApplicationController

    before_action :set_marketplace, only: [:show, :edit, :update, :destroy]

	def index
		@marketplaces = Marketplace.all
	end

  def show
    @marketplace = Marketplace.find(params[:id])
  end
	def new
		@marketplace = Marketplace.new
    @marketplace_image = @marketplace.market_place_images.build
	end
	def create
        @marketplace = Marketplace.new(marketplace_params)
    
        respond_to do |format|
          if @marketplace.save
            params[:market_place_images]['image'].each do |a|
            @marketplace_image = @marketplace.market_place_images.create!(:image => a, :marketplace_id => @marketplace.id)
          end

            if user_signed_in?
                current_user.gamification.create!(points:5)
             end
            format.html { redirect_to marketplaces_path notice: 'Product was successfully added.' }
          else
            format.html { render :new }
          end
        end
  end

  def edit
    @marketplace = Marketplace.find(params[:id])
  end

  def update
    respond_to do |format|
      if @marketplace.update(marketplace_params)
        format.html { redirect_to @marketplace, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @marketplace.destroy
    respond_to do |format|
      format.html { redirect_to marketplaces_url, notice: 'Product was successfully destroyed.' }
    end
  end
    
      private
         def set_marketplace
            @marketplace = Marketplace.find(params[:id])
         end

        def marketplace_params
          params.require(:marketplace).permit(:prod_name, :seller_name, :price, :phone,:description,:user_id,market_place_images_attributes: [:id, :marketplace_id, :image, :image_cache])
        end
end
