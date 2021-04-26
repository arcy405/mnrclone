class Event < ApplicationRecord

	include ActiveModel::Validations
	
    validates_presence_of :title, :location, :description,:date
      validates_length_of :description, maximum: 500

end
