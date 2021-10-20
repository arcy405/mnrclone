class Profession < ApplicationRecord
	has_many :professionals, dependent: :destroy
	#for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :name
	    searchableAttributes ['name']
	  end
end
