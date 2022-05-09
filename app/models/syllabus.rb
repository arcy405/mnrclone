class Syllabus < ApplicationRecord
  belongs_to :subject
  mount_uploader :syllabus_pdf, SyllabusUploader

end
