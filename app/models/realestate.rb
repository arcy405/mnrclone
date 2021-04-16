class Realestate < ApplicationRecord

	include ActiveModel::Validations
    extend FriendlyId
    
  	friendly_id :propertyname, use: :slugged

  	validates_presence_of :seller_name, :seller_phone, :price, :image, :propertyname
  	
end
