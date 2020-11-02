class HomesController < ApplicationController
  def index
    @tags=Tag.all
    @list_counts=Listing.group(:tag).count
  end

  def show
    category=params[:category]
    @lists=Listing.all.joins(:tag).where(tags: { title: category})
    end
  
  
end
