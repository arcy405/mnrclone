class EmergencyNumber < ApplicationRecord
	#for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :name,:phone
	    searchableAttributes ['name','phone']
	  end
end
