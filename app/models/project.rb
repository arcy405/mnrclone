class Project < ApplicationRecord
	mount_uploader :coverimage, ProjectUploader
	# mount_uploader :coverimage, ProjectbillsUploader


	has_many :project_images,dependent: :destroy
  	has_many :project_expenses,dependent: :destroy
    accepts_nested_attributes_for :project_images, :project_expenses
    has_many :donations,dependent: :destroy

end
