class PetAdoption < ApplicationRecord

	include ActiveModel::Validations
	
    mount_uploader :image, PetAdoptionUploader
    validates_presence_of :pet_name, :contact, :image
    validates_numericality_of :contact
 	 validates_length_of :contact, is: 10
end
