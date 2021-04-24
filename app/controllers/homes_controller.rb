class HomesController < ApplicationController
  def index
    @tags=Tag.order(:title)
  end

  def show
    category=params[:category]
    @catname=category
    @lists=Listing.all.joins(:tag).where(tags: { title: category})
    end

    def search
    	
      name=params[:aa_search_input]
      @listdetails=Listing.where("lower(name) LIKE lower('%#{name}%')")
      @listcount=Listing.where("lower(name) LIKE lower('%#{name}%')").count
      
    end
end
