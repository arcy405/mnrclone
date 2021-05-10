class TagsController < ApplicationController
	def index
		if  I18n.locale.to_s == "en"
	      @tags=Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_en)}
	    else
	      @tags = Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_np)}
	    end
	    @list_count = Rails.cache.fetch('list_counts', expires_in: 2.days){Listing.all.count}
	end
	
end
