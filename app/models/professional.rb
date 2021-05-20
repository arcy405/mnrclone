class Professional < ApplicationRecord
  belongs_to :profession
  mount_uploader :image, ProfessionalsImageUploader

  include ActiveModel::Validations
  validates_presence_of :name, :contact, :profession_id, :address
  validates_numericality_of :contact
  validates_length_of :contact, is: 10

end
