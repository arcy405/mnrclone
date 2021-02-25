class Gallery < ApplicationRecord
  mount_uploader :image, ModelUploader
  belongs_to :model
end
