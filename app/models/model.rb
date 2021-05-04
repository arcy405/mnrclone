class Model < ApplicationRecord
	has_many :gallery, inverse_of: :model , dependent: :destroy                           
  	accepts_nested_attributes_for :gallery, :allow_destroy => true

  	extend FriendlyId
  	friendly_id :name, use: :slugged

end
