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
      @kanchanpur_covid_data = Covid.last
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
      @bus_result= BusDeparture.raw_search(query)
      @blood_result= Donor.raw_search(query)
      @imp_number_result= EmergencyNumber.raw_search(query)
      @profession_result= Profession.raw_search(query)
      @tourist_result= Tourist.raw_search(query)

      puts query
      
        # @total_time = @tags_result[:processingTimeMS] + @listings_result[:processingTimeMS]  + @bus_result[:processingTimeMS] + @blood_result[:processingTimeMS] + @imp_number_result[:processingTimeMS] + @profession_result[:processingTimeMS] + @tourist_result[:processingTimeMS] 
        # @total_records = @tags_result[:nbHits] + @listings_result[:nbHits] + @bus_result[:nbHits] + @blood_result[:nbHits] + @imp_number_result[:nbHits] + @profession_result[:nbHits] + @tourist_result[:nbHits] 
    end


end
