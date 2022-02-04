class Section < ApplicationRecord
    has_many :document, inverse_of: :section , dependent: :destroy                           
    accepts_nested_attributes_for :document, :allow_destroy => true
    
end
