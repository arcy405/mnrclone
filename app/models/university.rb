class University < ApplicationRecord
	has_many :university_departments, dependent: :destroy
end
