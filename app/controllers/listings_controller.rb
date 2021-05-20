class ListingsController < ApplicationController

  def index
    @lists=List.all
  end

  def new
    if  I18n.locale.to_s == "en"
      @tags=Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_en)}
    else
      @tags = Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_np)}
    end
    @listing=Listing.new
  end

  def create
    @tag=Tag.find(params[:tag_id])
    @listing = @tag.listings.new(listing_params)

        respond_to do |format|
          if @listing.save
            if user_signed_in?
                current_user.gamification.create!(points:5)
              end
            format.html {redirect_to listings_sucess_path}
          else
            format.html {redirect_to listings_new_path, alert: "Error creating listing."}
          end
       end
  end

  def show
    id=params[:id]
    name=params[:name]
    if id == nil
      @listdetails=Listing.find_by(name: name)
      lid=@listdetails.id
      @list= Listing.find(lid)
    else
      @listdetails=Listing.find(id)
      @list= Listing.find(params[:id])
    end
  end
  def sucess

  end
  

  private

  def listing_params
    params.require(:listing).permit(:name, :address, :owner, :phone, :description, :tag_id)
  end
  
end
