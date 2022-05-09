class Note < ApplicationRecord
  belongs_to :subject
  mount_uploader :note_pdf, NoteUploader

end
