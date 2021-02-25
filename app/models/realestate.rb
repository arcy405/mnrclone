class Realestate < ApplicationRecord
    extend FriendlyId
  	friendly_id :propertyname, use: :slugged
end
