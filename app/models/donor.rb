class Donor < ApplicationRecord
    include ActiveModel::Validations
	extend FriendlyId

  	friendly_id :name, use: :slugged

  	validates_presence_of :name, :address, :blood_group, :gender, :age, :phone1
  	validates_numericality_of :age, greater_than_or_equal_to: 16
  	validates_length_of :phone1, is: 10
end
