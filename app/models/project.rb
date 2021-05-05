class Project < ApplicationRecord
	mount_uploader :coverimage, ProjectUploader

	has_many :project_images,dependent: :destroy
    accepts_nested_attributes_for :project_images

    has_many :donations,dependent: :destroy

end
