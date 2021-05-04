class Realestate < ApplicationRecord

	include ActiveModel::Validations
    extend FriendlyId
    
  	friendly_id :propertyname, use: :slugged
	  

	  has_many :realestate_images,dependent: :destroy
    accepts_nested_attributes_for :realestate_images

  	validates_presence_of :seller_name, :seller_phone, :price, :propertyname ,:user_id  
  
end
