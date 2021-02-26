class PetAdoption < ApplicationRecord
    mount_uploader :image, PetAdoptionUploader
end
