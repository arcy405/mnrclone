class Donation < ApplicationRecord

	belongs_to :project

	include ActiveModel::Validations

	mount_uploader :image, DonationImageUploader

  	validates_presence_of :donor_name, :address, :contact, :donation_amount
  	validates_numericality_of :contact
  	validates_length_of :contact, is: 10

end
