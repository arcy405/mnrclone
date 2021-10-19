class ListingSerializer < ActiveModel::Serializer 
    attributes :id, :name, :address, :owner, :phone, :description, :image, :rating, :longitude, :lattitude
end