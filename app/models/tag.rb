class Tag < ApplicationRecord

	  include Translatable
	  translates :title
	  
    mount_uploader :image, TagimageUploader
    has_many :listings, dependent: :destroy

  	
end
