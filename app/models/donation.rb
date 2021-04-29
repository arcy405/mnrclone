class Donation < ApplicationRecord

	belongs_to :project

	include ActiveModel::Validations

  	validates_presence_of :donor_name, :address, :contact, :donation_amount
end
