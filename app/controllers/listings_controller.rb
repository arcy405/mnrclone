class ListingsController < ApplicationController

  def new
    @tags=Tag.order(:title)
    @newlist=Listing.new
  end

  def create
    @tag=Tag.find(params[:tag_id])
    @newlist = @tag.listings.new(params[:newlist])
    if @newlist.save
      redirect_to @newlist, alert: "User created successfully."
    else
      redirect_to listings_new_path, alert: "Error creating user."
    end
  end

  def show
    id=params[:id]
    name=params[:name]
    if id == nil
      @listdetails=Listing.find_by(name: name)
    else
      @listdetails=Listing.find(id)
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
  #similar to create listing but 
  #will be done by users and listing will be published once verified by admin
  
  
end
