class TouristSerializer < ActiveModel::Serializer 
    attributes :id, :place_name, :location, :contact, :tourist_images, :longitude, :lattitude, :feature, :description
end