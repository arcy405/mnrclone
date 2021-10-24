class RealestateSerializer < ActiveModel::Serializer 
    attributes :id, :seller_name, :seller_phone, :price, :address, :ptype,:propertyname,:bedroom,:kitchen,:bathroom,:latitude, :longitude, :description
end