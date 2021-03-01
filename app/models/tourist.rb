class Tourist < ApplicationRecord
    has_many :tourist_image, dependent: :destroy
    def to_s 
        return self.place_name 
    end 
    def title 
        return self.to_s
    end 

end
