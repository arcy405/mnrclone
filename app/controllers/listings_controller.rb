class ListingsController < ApplicationController

  def index
    @lists=List.all
  end

  def new
    @tags=Tag.order(:title)
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
      redirect_to listings_sucess_path
    else
      redirect_to listings_new_path, alert: "Error creating listing."
    end
  end

  def show
    
    id=params[:id]
    name=params[:name]
    if id == nil
      @listdetails=Listing.friendly.find_by(name: name)
      lid=@listdetails.id
      @list= Listing.friendly.find(lid)
    else
      @listdetails=Listing.friendly.find(id)
      @list= Listing.friendly.find(params[:id])
    end
  end
  def search 
    @tags=Tag.order(:title)
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
