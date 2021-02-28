class TouristImage < ApplicationRecord
  belongs_to :tourist
  mount_uploader :image, TouristUploader
end
