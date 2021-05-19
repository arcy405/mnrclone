class Donor < ApplicationRecord
    include ActiveModel::Validations
	extend FriendlyId

	belongs_to :user

  	friendly_id :name, use: :slugged

  	validates_presence_of :name, :address, :blood_group, :gender, :age, :phone1
  	validates_numericality_of :age, greater_than_or_equal_to: 16
  	validates_length_of :phone1, is: 10

  	#for search
    include AlgoliaSearch
	  algoliasearch auto_index: true do
	    attribute :blood_group
	    searchableAttributes ['blood_group']
	  end
end
