class UniversitySemester < ApplicationRecord
	has_many :subjects, dependent: :destroy
end
