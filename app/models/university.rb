class University < ApplicationRecord
	has_many :university_departments, dependent: :destroy
	has_many :sub_departments, dependent: :destroy
end
