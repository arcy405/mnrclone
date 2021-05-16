class SubDepartment < ApplicationRecord
  belongs_to :university_department
  belongs_to :university
end
