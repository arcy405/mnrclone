class MarketPlaceImage < ApplicationRecord

	mount_uploader :image, MarketplaceUploader
	belongs_to :marketplace

end
