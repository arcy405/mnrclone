class Donor < ApplicationRecord
    include ActiveModel::Validations
	extend FriendlyId

  	friendly_id :name, use: :slugged

  	validates_presence_of :name, :address, :blood_group, :gender

end
