class Tourist < ApplicationRecord
    mount_uploader :image, TouristUploader
end
