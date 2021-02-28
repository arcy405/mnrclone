class Tourist < ApplicationRecord
    has_many :tourist_image, dependent: :destroy
    
end
