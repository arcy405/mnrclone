class PetAdoption < ApplicationRecord

	include ActiveModel::Validations
	
    mount_uploader :image, PetAdoptionUploader
    validates_presence_of :pet_name, :pet_type, :location, :contact, :image
end
