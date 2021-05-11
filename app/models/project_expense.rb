class ProjectExpense < ApplicationRecord
    belongs_to :project
    mount_uploader :biils, ProjectbillsUploader
end
