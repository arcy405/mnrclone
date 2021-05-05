class Professional < ApplicationRecord
  belongs_to :profession
  mount_uploader :image, ProfessionalsImageUploader
end
