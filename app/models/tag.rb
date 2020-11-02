class Tag < ApplicationRecord
    mount_uploader :image, TagimageUploader
    has_many :listings, dependent: :destroy
end
