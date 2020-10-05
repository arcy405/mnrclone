class Tag < ApplicationRecord
    mount_uploader :image, TagimageUploader
end
