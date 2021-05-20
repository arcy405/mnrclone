class Realestate < ApplicationRecord

	include ActiveModel::Validations
    extend FriendlyId
    
  	friendly_id :propertyname, use: :slugged
	  
	has_many :realestate_images,dependent: :destroy
	accepts_nested_attributes_for :realestate_images, :reject_if => proc {|attributes| attributes['image'].blank? && attributes['image_cache'].blank?}

	validates_presence_of :seller_name, :seller_phone, :price, :propertyname ,:user_id ,:realestate_images, :description, :address 
  	validates_numericality_of :seller_phone
  	validates_length_of :seller_phone, is: 10

end
