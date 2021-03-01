class Review < ApplicationRecord
	belongs_to :listing

	def blank_stars
        5- rating.to_i
    end
    
end
