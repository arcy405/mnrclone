class Marketplace < ApplicationRecord

	include ActiveModel::Validations
	
    mount_uploader :image, MarketplaceUploader
    validates_presence_of :prod_name, :seller_name, :price, :phone, :image
end
