class Marketplace < ApplicationRecord

	include ActiveModel::Validations

	extend FriendlyId
    
  	friendly_id :prod_name, use: :slugged
    
    has_many :market_place_images,dependent: :destroy
    accepts_nested_attributes_for :market_place_images, :reject_if => proc {|attributes| attributes['image'].blank? && attributes['image_cache'].blank?}
    
    validates_presence_of :prod_name, :seller_name, :price, :phone, :description, :user_id
    validates_numericality_of :phone
  	validates_length_of :phone, is: 10
end
