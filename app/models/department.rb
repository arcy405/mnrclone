class Department < ApplicationRecord
	has_many :notes, dependent: :destroy
end
