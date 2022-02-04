class Document < ApplicationRecord
    belongs_to :section
    mount_uploader :doc_image, DocumentUploader
end
