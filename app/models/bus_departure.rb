class BusDeparture < ApplicationRecord
	#for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :destination
	    searchableAttributes ['destination']
	  end
end
