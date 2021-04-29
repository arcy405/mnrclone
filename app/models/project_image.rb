class ProjectImage < ApplicationRecord
	mount_uploader :image, ProjectGalleryUploader
	belongs_to :project
end
