class Tag < ApplicationRecord


	include Translatable
	translates :title
	  
    mount_uploader :image, TagimageUploader
    has_many :listings, dependent: :destroy

    #for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :title_en
	    searchableAttributes ['title_en']
	  end

end
