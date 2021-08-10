class RealestateImage < ApplicationRecord
    mount_uploader :image, RealestateimageUploader
    belongs_to  :realestate , optional: true
end
