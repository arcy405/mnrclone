class Vacancy < ApplicationRecord
	extend FriendlyId
    
  	friendly_id :job_title, use: :slugged
end
