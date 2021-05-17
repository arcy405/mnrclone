class SubDepartment < ApplicationRecord
  belongs_to :university_department
  belongs_to :university
  has_many :subjects, dependent: :destroy
end
