class MarketplacesController < ApplicationController
	def index
		@marketplaces = Marketplace.all
	end
	def new
		@marketplace = Marketplace.new
	end
	def create
        @marketplace = Marketplace.new(marketplace_params)
    
        respond_to do |format|
          if @marketplace.save
            if user_signed_in?
                current_user.gamification.create!(points:5)
             end
            format.html { redirect_to marketplaces_path notice: 'Product was successfully added.' }
          else
            format.html { render :new }
          end
        end
      end
    
      private
        def marketplace_params
          params.require(:marketplace).permit(:prod_name, :seller_name, :image,:image_cache, :price, :phone)
        end
end
