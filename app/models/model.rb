class Model < ApplicationRecord
	has_many :galleries, inverse_of: :model , dependent: :destroy                           
  	accepts_nested_attributes_for :galleries, :allow_destroy => true

  	extend FriendlyId
  	friendly_id :name, use: :slugged

end
