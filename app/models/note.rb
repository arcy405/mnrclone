class Note < ApplicationRecord
	belongs_to :university
	belongs_to :university_semester
	belongs_to :department

	include ActiveModel::Validations
    validates_presence_of :subject_name,:chapter_name,:chapter_number,:notes_pdf

    mount_uploader :notes_pdf, NotesPdfUploader

end
