class Tourist < ApplicationRecord

    
    has_many :tourist_images, dependent: :destroy
    extend FriendlyId
    
    friendly_id :place_name, use: :slugged
    
    def to_s 
        return self.place_name 
    end 
    def title 
        return self.to_s
    end 
    accepts_nested_attributes_for :tourist_images, :reject_if => proc {|attributes| attributes['image'].blank? && attributes['image_cache'].blank?}

    #for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :place_name
	    searchableAttributes ['place_name']
	  end

end
