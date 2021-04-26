class PetAdoption < ApplicationRecord

	include ActiveModel::Validations
	
    mount_uploader :image, PetAdoptionUploader
    validates_presence_of :pet_name, :contact, :image
end
