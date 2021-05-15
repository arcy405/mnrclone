class University < ApplicationRecord
	has_many :notes, dependent: :destroy
	has_many :university_departments, dependent: :destroy
end
