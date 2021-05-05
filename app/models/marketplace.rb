class Marketplace < ApplicationRecord

	include ActiveModel::Validations
    
    has_many :market_place_images,dependent: :destroy
    accepts_nested_attributes_for :market_place_images, :reject_if => proc {|attributes| attributes['image'].blank? && attributes['image_cache'].blank?}
    
    validates_presence_of :prod_name, :seller_name, :price, :phone, :description, :user_id
end
