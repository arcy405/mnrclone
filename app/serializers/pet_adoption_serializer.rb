class PetAdoptionSerializer < ActiveModel::Serializer 
    attributes :id, :pet_name, :pet_type, :contact, :location, :image
end