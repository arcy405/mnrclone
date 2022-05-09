class Subject < ApplicationRecord
  belongs_to :sub_department
  belongs_to :university_semester

  has_many :notes, dependent: :destroy 
	accepts_nested_attributes_for :notes, :reject_if => proc {|attributes| attributes['note_pdf'].blank? && attributes['image_cache'].blank?}

  has_many :syllabuses, dependent: :destroy 
  accepts_nested_attributes_for :syllabuses, :reject_if => proc {|attributes| attributes['syllabus_pdf'].blank? && attributes['image_cache'].blank?}


end
