class UniversityDepartment < ApplicationRecord
  	belongs_to :university
  	has_many :sub_departments, dependent: :destroy
end
