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

    if NewGoogleRecaptcha.human?(
      params[:new_google_recaptcha_token],
      "listing",
      NewGoogleRecaptcha.minimum_score,
      @post
    ) &&  @listing.save
      if user_signed_in?
          current_user.gamification.create!(points:5)
        end
      redirect_to listings_sucess_path
    else
      redirect_to listings_new_path, alert: "Error creating listing."
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
  def search 
    @tags=Tag.order(:title_en)
    @list_counts=Listing.group(:tag).count
    
    name=params[:aa_search_input]
    @test=Listing.find_by(name: params[:aa_search_input])
    if @test==nil
      @listdetails=Listing.where("lower(name) LIKE lower('%#{name}%')")
      @listcount=Listing.where("lower(name) LIKE lower('%#{name}%')").count
      if @listcount== 0
        Searchedkeyword.create(word: name)
      end
    else
      redirect_to action: "show",name: name
    end
    
  end
  def sucess

  end
  

  private

  def listing_params
    params.require(:listing).permit(:name, :address, :owner, :phone, :description, :tag_id)
  end
  
end
