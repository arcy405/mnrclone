class Tourist < ApplicationRecord
    has_many :tourist_image, dependent: :destroy
    def to_s 
        return self.place_name 
    end 
    def title 
        return self.to_s
    end 

    #for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :place_name
	    searchableAttributes ['place_name']
	  end

end
