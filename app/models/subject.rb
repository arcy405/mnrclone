class Subject < ApplicationRecord
  belongs_to :sub_department
  belongs_to :university_semester
end
