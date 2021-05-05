class HomesController < ApplicationController
  def index
    if  I18n.locale.to_s == "en"
      @tags=Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_en)}
    else
      @tags = Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_np)}
    end
    @list_count = Rails.cache.fetch('list_counts', expires_in: 2.days){Listing.all.count}
  end

  def show
    category=params[:category]
    @catname=category
    @lists=Listing.all.joins(:tag).where(tags: { title_en: category})
    end

    def search
    	
      name=params[:aa_search_input]
      @listdetails=Listing.where("lower(name) LIKE lower('%#{name}%')")
      @listcount=Listing.where("lower(name) LIKE lower('%#{name}%')").count

      @seach = Listing.search[:aa_search_input]
      
    end

    def tool
    end
end
