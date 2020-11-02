class DetailsController < ApplicationController
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
    name=params[:aa_search_input]
    @test=Listing.find_by(name: params[:aa_search_input])
    if @test==nil
      @listdetails=Listing.where("name LIKE '%#{name}%'")
    else
      redirect_to action: "show",name: name
    end
    
  end
end
