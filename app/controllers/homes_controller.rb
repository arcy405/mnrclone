class HomesController < ApplicationController
  
  def index

    url = "https://covid19.mathdro.id/api/countries/nepal"
    response = HTTParty.get(url)

    @result = response.parsed_response

    if  I18n.locale.to_s == "en"
        @tags=Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_en).where("top_service = ?", true).limit(10)}
      else
        @tags = Rails.cache.fetch('tags', expires_in: 2.days){Tag.order(:title_np).where("top_service = ?", true).limit(10)}
      end
  end

  def show
    category=params[:category]
    @catname=category
    @lists=Listing.all.joins(:tag).where(tags: { title_en: category})
    end

    def search
      query=params[:aa_search_input]
      @tags_result= Tag.raw_search(query)
      @listings_result= Listing.raw_search(query)
      
        @total_time = @tags_result[:processingTimeMS] + @listings_result[:processingTimeMS]
        @total_records = @tags_result[:nbHits] + @listings_result[:nbHits]
    end

    def tool
    end

end
