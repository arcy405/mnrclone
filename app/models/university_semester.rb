class UniversitySemester < ApplicationRecord
	has_many :notes, dependent: :destroy
end
